"Activation de vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'xolox/vim-misc'
Plugin 'JohnStarich/vim-easytags'
Plugin 'vim-scripts/LycosaExplorer'
Plugin 'nvie/vim-flake8'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/nextval'
Plugin 'hdima/python-syntax'
Plugin 'yegappan/greplace'
Plugin 'dln/avro-vim'
"Plugin 'klen/python-mode'

call vundle#end()

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
set ignorecase "Searches are not case sensitives
set smartcase "Except of searches with upper case
set hlsearch
set incsearch

"Encoding
set encoding=utf-8
set fileencodings=utf-8

" Color
set background=dark
"colorscheme solarized
colorscheme delek

" Switch on filetype detection and loads 
" indent file (indent.vim) for specific file types
filetype indent on
filetype on
set autoindent " Copy indent from the row above
filetype plugin indent on    " required
filetype plugin on

" Managing of .avdl file
au BufRead,BufNewFile *.avdl setlocal filetype=avro-idl

""""""""""""""""""""""""""""""""""
" Some other conf settings
""""""""""""""""""""""""""""""""""
" set nu " Number lines
set hls " highlight search
set lbr " linebreak

set showcmd "Display commands in the status bar
set mouse=a
set history=50

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
nnoremap <leader>k <C-]>
nnoremap <leader>t <C-t>
