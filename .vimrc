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

set number

"set grepprg=grep\ -nH\ $*
"let g:tex_flavor = \"latex"

map <Enter> o<ESC>
map <S-Enter> O<ESC>
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
