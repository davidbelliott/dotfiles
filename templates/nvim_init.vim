set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
set clipboard+=unnamedplus

" colorscheme
let base16colorspace=256
colorscheme base16

" Filetype plugins and indent
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

syntax on

setglobal fileencoding=utf-8

set hidden
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set background=dark
set encoding=utf8
set mouse=a
set wildmenu
set printoptions=paper:letter
set colorcolumn=80
set ttimeoutlen=0
set regexpengine=1

command! -nargs=0 Sw w !sudo tee % > /dev/null

call plug#begin('~/.local/share/nvim/plugged')
Plug 'lervag/vimtex'
call plug#end()
