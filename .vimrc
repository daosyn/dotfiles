"general
colorscheme default
filetype plugin indent on
syntax on

"lazy formatting
set autoindent
set backspace=indent,eol,start
set smartindent

"tab configuration
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"find stuff
set number
set showmatch
set wrap

"better search
set hlsearch
set incsearch

"web development
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 softtabstop=2 tabstop=2

"netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
