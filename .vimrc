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
set hlsearch
set hidden
set ruler
set number
" oh my HELL this was somehow defaulted to white on MAGENTA
highlight Pmenu guibg=brown gui=bold
set cursorline
set gfn=Consolas:h14:cANSI
set backspace=indent,eol,start
"set guioptions-=m "menu bar
set guioptions-=T "toolbar
set guioptions-=r "scrollbar
set noswapfile
set columns=110
set cmdheight=1
set nowrap
set mouse=a

" Pathogen and plugin setup
execute pathogen#infect()
syntax enable
filetype plugin indent on

set background=dark
colorscheme solarized
let g:solarized_termcolors=256

nmap <silent> <leader>t :NerdTreeToggle<CR>

let g:nerdtree_tabs_open_on_console_startup = 1

let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = 'W'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:synatstic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:javascript_enable_domhtmlcss = 1
let g:jsx_ext_required = 0
"let g:neocomplete#enable_at_startup = 1
