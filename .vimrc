
execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
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
colorscheme solarized
set cursorline
set gfn=Consolas:h11:cANSI
set backspace=indent,eol,start
set guioptions-=m "menu bar
set guioptions-=T "toolbar
set guioptions-=r "scrollbar
set noswapfile
set columns=85
set cmdheight=1
set hidden

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
