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
set incsearch
set smartcase

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
"autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Desactivation of the directional arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Mapleader
let mapleader = ","
set hidden

" Parametres par defaut pour ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" " Place un marqueur et cherche
nmap <leader>j mA:Ack<space>
" " Place un marqueur et cherche le mot sous le curseur
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

"Search of tags file
set tags=./tags,tags;$HOME

"CtrlP
let g:ctrlp_map = '<leader>c' 

"Ctrltags
nnoremap <leader>. :CtrlPTag<cr>

"Ctags remap
nnoremap <C-]> <C-l>
