" vim:syntax=vim
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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'lervag/vimtex'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/context_filetype.vim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
call vundle#end()

" colorscheme
let base16colorspace=256
colorscheme base16

" Filetype plugins and indent
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_complete_close_braces = 1
let g:vimtex_quickfix_latexlog = {
          \ 'overfull' : 0,
          \ 'underfull' : 0,
          \}

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_tex_checkers = ['chktex', 'lacheck']
let g:syntastic_quiet_messages = { "type": "style" }

" Activate deoplete by default
let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<c-p>" : "\<S-tab>"

" LaTeX completion patterns for deoplete.
if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
"if has('conceal')
  "set conceallevel=2 concealcursor=niv
"endif

inoremap <silent><expr><CR> pumvisible() ? deoplete#mappings#close_popup()."\<CR>" : "\<CR>"

setglobal fileencoding=utf-8
set colorcolumn=80
command! -nargs=0 Sw w !sudo tee % > /dev/null

set ttimeoutlen=0
set regexpengine=1

map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
