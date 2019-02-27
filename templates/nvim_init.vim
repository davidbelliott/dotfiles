set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
set clipboard+=unnamedplus

"initialize Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'lervag/vimtex'
Plugin 'Shougo/context_filetype.vim'
call vundle#end()

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

" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_complete_close_braces = 1
let g:vimtex_quickfix_latexlog = {
          \ 'overfull' : 0,
          \ 'underfull' : 0,
          \}
let g:vimtex_compiler_progname = 'nvr'
