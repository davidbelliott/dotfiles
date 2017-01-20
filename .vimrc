execute pathogen#infect()
filetype plugin indent on
syntax on
set hidden
set backspace=indent,eol,start
set expandtab
set tabstop=4
set shiftwidth=4
set nowrap
set background=dark
colorscheme gruvbox
set encoding=utf8
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

func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  map k gk
  map j gj
  setlocal spell spelllang=en_us 
  set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap 
  setlocal linebreak 
  setlocal colorcolumn=""
endfu 
com! WP call WordProcessorMode()

set number

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

map <Enter> o<ESC>
map <S-Enter> O<ESC>
