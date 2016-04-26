set nocompatible
"set term=xterm=256color

"execute pathogen#infect()
syntax on
filetype plugin indent on

set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set hidden
set ruler
set number
set background=dark
"let g:solarized_termcolors=256 
colorscheme murphy

" oh my HELL this was somehow defaulted to white on MAGENTA
highlight Pmenu guibg=brown gui=bold

set cursorline
set gfn=Consolas:h12:cANSI
set backspace=indent,eol,start
"set guioptions-=m "menu bar
set guioptions-=T "toolbar
set guioptions-=r "scrollbar
set noswapfile
set columns=110
set cmdheight=1
" set hidden

"let g:slimv_impl="wx86cl64"
"let g:slimv_swank_cmd = '!start wx86cl64 -l "D:\lisp\slime-2.15\start-swank.lisp"'
"let g:slimv_preferred="wx86cl64"
"

"let g:slimv_impl="sbcl"
"let g:slimv_preferred="sbcl"

"if has("win32")
"let g:slimv_swank_cmd = '!start sbcl --load "D:\lisp\slime-2.15\start-swank.lisp"'
"elseif has("unix")
"unix
"let g:slimv_swank_cmd = '!start sbcl --load "~/lisp/slime/start-swank.lisp"'
"endif

"let g:paredit_mode = 0
"let g:lisp_rainbow = 1

set nowrap
