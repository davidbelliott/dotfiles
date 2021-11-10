" vim:syntax=vim
"initialize Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" colorscheme
let base16colorspace=256
colorscheme base16

" Filetype plugins and indent
filetype plugin indent on

syntax on
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
set nowrap

set statusline+=%#warningmsg#
set statusline+=%*

" Print on letter paper
set printoptions=paper:letter

setglobal fileencoding=utf-8
set colorcolumn=80
command! -nargs=0 Sw w !sudo tee % > /dev/null

set ttimeoutlen=0
set regexpengine=1

map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>


call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'github/copilot.vim'

call plug#end()
