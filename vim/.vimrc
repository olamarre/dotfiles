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

" Keep cursor vertically centered when scrolling
set scrolloff=999  " set scrolloff=0 to reset

" Always show status bar (file name, status, current line/column, etc.)
set laststatus=2

" Set a color column at columns 73 and 80
set colorcolumn=73,80

" Highlight current line
set cursorline

" By default, the color columns are in bright red, this turns them to light grey
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Auto-install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" list plugins to install here
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
call plug#end()

" set color scheme (& dark background)
colorscheme gruvbox 
set bg=dark

" Markdown code block syntax highlighting
let g:markdown_fenced_languages = ['python', 'cpp', 'css', 'javascript', 'js=javascript', 'json=javascript', 'xml', 'yaml', 'sh', 'bash=sh', 'html']
