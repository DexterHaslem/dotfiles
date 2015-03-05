set nocompatible

execute pathogen#infect()
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
let g:solarized_termcolors=256 
colorscheme solarized
set cursorline
set gfn=Consolas:h10:cANSI
set backspace=indent,eol,start
"set guioptions-=m "menu bar
set guioptions-=T "toolbar
set guioptions-=r "scrollbar
set noswapfile
set columns=110
set cmdheight=1
" set hidden

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:airline#extensions#tabline#enabled = 1
set laststatus=2 "fixes airline going missing until a split is created

" for omnisharp
" set noshowmatch 
" let g:syntastic_cs_checkers = [ 'syntax', 'semantic', 'issues' ]
" set updatetime=300

"let g:slimv_swank_cmd = '! gnome-terminal -e "/home/dmh/ccl/lx86cl64 -l ~/slime/start-swank.lisp &"'
let g:slimv_impl="sbcl"
