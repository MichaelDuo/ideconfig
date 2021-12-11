syntax on
set nocompatible
filetype on
filetype plugin on
filetype indent on
set history=1000
" show number
set number
" show bottomline at the highlighted line
set cursorline
" highlight current search
set incsearch
" show matching word during the search
set showmatch
" highlight matches after search
set hlsearch
" enable mouse
set mouse=a
" reset leader key
let mapleader = ","
" timeout default is 1000
set timeoutlen=1000

map <leader>t :NERDTreeToggle<CR>
" turn off word highlighting after search
map <leader>h :noh<CR>
" Ctrl+n
map <C-n> :NERDTreeToggle<CR>
 

" install vim-plug plugin manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" For new editor, run PlugInstall
call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'

call plug#end()

