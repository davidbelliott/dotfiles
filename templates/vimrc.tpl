"initialize Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'digitaltoad/vim-pug'
Plugin 'junegunn/goyo.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
call vundle#end()

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
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set encoding=utf8
set mouse=a

hi clear SignColumn

setglobal fileencoding=utf-8
set colorcolumn=80
command! -nargs=0 Sw w !sudo tee % > /dev/null

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

set ttimeoutlen=150

map <Enter> o<ESC>
map <S-Enter> O<ESC>
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
