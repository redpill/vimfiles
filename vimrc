""" Configurações Gerais
set nocompatible
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set statusline=%<%f\ %h%m%r\ [%Y]\ [GIT:%{GitBranchInfoTokens()[0]}]%=%-10([line/total\ %l/%L,\ col\ %c%V]%)%=%-10(%)\ %P
set laststatus=2
syntax on
set nu
filetype on
filetype plugin on
filetype indent on
set ruler
set nowrap
set backspace=indent,eol,start

""" Completação de Codigo
inoremap <Nul> <C-x><C-o>
inoremap <C-Space> <C-p>
inoremap <C-\> <C-x><C-o>

""" Configurações do Color Schema
set background=dark
colorscheme jellybeans 

""" Mapeamento
noremap <C-v><C-r> <esc>:source ~/.vimrc<CR>
noremap <C-v><C-s> <esc>:mksession! ~/.vim/.session<CR>
map <M-Right> <esc>:tabnext<CR>
map <M-Left> <esc>:tabprevious<CR>
noremap <C-s> :w<CR>
inoremap <C-s> <esc>:w<CR>i
noremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <esc>:NERDTreeToggle<CR>
map <F3> :TlistToggle<CR>

""" Configurações para o FuzzyFinder
nnoremap <F5> :FuzzyFinderTextMate<CR>
inoremap <F5> <esc>:FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>] :FuzzyFinderMruFile<CR>
map <leader>r :ruby finder.rescan!<CR>
let g:proj_flags="imstg"
let g:fuzzy_ceiling=20000
let g:fuzzy_matching_limit=25
let g:fuzzy_ignore = "gems/*, log/* tmp/*"

""" Configuração do Scratch
let g:scratch_file="~/.vim/scratch"
map <F4> :ToggleScratch<CR>

""" Configurações do Ruby 
augroup rubyfiletype
  autocmd!
  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  set tags+=$HOME/.vim/tags/ruby.ctags
augroup END

""" Configurações do Rails.vim
augroup rails
  let g:rails_default_file='config/database.yml'
augroup END

""" Configurações do Python 
augroup pythonfiletype
  autocmd!
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType python set ai sw=4 st=4 et
  set tags+=$HOME/.vim/tags/python.ctags
augroup END

""" Configurações do Erlang
augroup erlangfiletype
  autocmd!
  autocmd FileType erlang set omnifunc=erlangcomplete#Complete
  autocmd FileType erlang set ai sw=2 st=2 et
  let g:erlangCompiler="erlc"
augroup END

""" Configurações para PHP
augroup phpfiletype
  autocmd!
  autocmd FileType php set omnifunc=phpcomplete#CompletePHP
  autocmd FileType php set ai sw=2 st=2 et
  set tags+=$HOME/.vim/tags/php.ctags
augroup END

augroup htmlfiletype
  autocmd!
  autocmd FileType html,xhtml set ai sw=2 st=2 et
augroup END

""" Configurações para Gvim
if has("gui_running")
  set t_Co=256
  set guifont="Bitstream Vera Sans Mono":h11
  set guitablabel=%M%t
  set guioptions-=m
  set guioptions-=T
  set lines=40
  set columns=115
  set mousehide  " Hide mouse after chars typed
endif

""" TagList
let Tlist_Ctags_Cmd='/usr/bin/ctags' " point taglist to ctags
let Tlist_GainFocus_On_ToggleOpen = 1 " Focus on the taglist when its toggled
let Tlist_Close_On_Select = 1 " Close when something's selected
let Tlist_Use_Right_Window = 1 " Project uses the left window
let Tlist_File_Fold_Auto_Close = 1 " Close folds for inactive files

""" Files/Backups
set nobackup
set nowritebackup
set backupdir=./.backup,~/.backup,.,/tmp
set directory=.,~/tmp,/var/tmp,/tmp
set makeef=make.err

