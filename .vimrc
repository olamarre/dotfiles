" Enable indenting
filetype plugin indent on

" Make tabs 4-characters wide (only works in INSERT mode)
set tabstop=4

" Double tap '<' or '>' (in NORMAL mode) to shif an entire left or right by 4 characters
set shiftwidth=4

" Convert all tabs & line shifts to spaces
set expandtab

" Syntax highlighting
syntax on

" turn hybrid line numbers on
set number relativenumber
set nu rnu

" Line numbers
"set number

" Always show status bar (file name, status, current line/column, etc.)
set laststatus=2

" Set a color column at columns 73 and 80
set colorcolumn=73,80

" By default, the color columns are in bright red, this turns them to light grey
highlight ColorColumn ctermbg=0 guibg=lightgrey
