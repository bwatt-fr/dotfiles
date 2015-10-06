" Activation of pathogen
call pathogen#infect()

" Display
set ruler
set title
set wrap

""""""""""""""""""""""""""""""""""
" Syntax and indent
""""""""""""""""""""""""""""""""""
syntax on " Turn on syntax highligthing
set showmatch  "Show matching bracets when text indicator is over them

" Search
set ignorecase
set hlsearch

" Color
set background=dark
"colorscheme solarized
colorscheme delek

set nocompatible

" Switch on filetype detection and loads 
" indent file (indent.vim) for specific file types
filetype indent on
filetype on
set autoindent " Copy indent from the row above
filetype plugin indent on    " required
filetype plugin on
""""""""""""""""""""""""""""""""""
" Some other confy settings
""""""""""""""""""""""""""""""""""
" set nu " Number lines
set hls " highlight search
set lbr " linebreak

set showcmd
set mouse=a

" To ignore plugin indent changes, instead use:
"filetype plugin on
"

set pastetoggle=<F5>
imap :: <ESC>


"Activation of NERDTree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
