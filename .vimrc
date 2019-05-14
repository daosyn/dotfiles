"general
colorscheme slate
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

"show whitespace
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,space:·
set list

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

