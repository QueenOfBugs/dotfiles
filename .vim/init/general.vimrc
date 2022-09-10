" basic setting
set nocompatible
set number
set shiftround
set showcmd

set nowrap

set tabstop=2
set expandtab
set shiftwidth=4 " 一个tab替换成多少space"

" edit setting
set backspace=indent,eol,start

set relativenumber
" Coding setting
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set noruler
set smarttab

" colorscheme gruvbox
" colorscheme dracula
" colorscheme industry
" colorscheme emacs
" if &runtimepath =~ 'dracula'
"     " echo "dracula installed"
"     colorscheme dracula
" endif
colorscheme wildgrass
set background=dark

syntax on
filetype plugin on
filetype indent on
" Personal mapping
inoremap jk <ESC>
inoremap <ESC> <nop>
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>e :split $MYVIMRC<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" UI
" 设置当前行高亮并且修改高亮格式
" set cursorline
" highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE

" set mouseshape=s:up-arrow,m:no
" :autocmd InsertEnter,InsertLeave * set cul!
" set guicursor=i-ci:ver30-iCursor-blinkwait300-blinkon200-blinkoff150
if &term =~ 'rxvt-unicode-256color'
let &t_SI = "\<esc>[5 q" " t_SI Insert
let &t_SR = "\<esc>[5 q" " t_SR Replace
let &t_EI = "\<esc>[1 q" " t_EI Leaving I or R mode
endif
" the following two lines equal to three lines above
" au InsertEnter * silent execute "!echo -en \<esc>[5 q"
" au InsertLeave * silent execute "!echo -en \<esc>[2 q"

" 1 is the blinky block cursor
" 2 is the default (non-blinky) block cursor
" 3 is blinky underscore
" 4 fixed underscore
" 5 pipe bar (blinking)
" 6 fixed pipe bar
"
"


" vimwiki conceal

autocmd filetype vimwiki :set concealcursor=
