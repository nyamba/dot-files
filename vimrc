" nyamba vimrc, @2013

" Vundle {1
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let Vundle manage Vundle
Plugin 'gmarik/vundle'
" My Bundles
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All Plugin must be added before the following line
call vundle#end()
filetype plugin indent on


" Basic {1
set noswapfile
set nowrap
set hlsearch
set modelines=5
set cursorline
set fillchars=fold:\ 
filetype indent on
filetype plugin on
set background=dark
let g:solarized_underline=0
colorscheme solarized
let g:syntastic_html_checkers = []
let NERDTreeIgnore=['.pyc$[[file]]', '\~$']

" Key map {1
let mapleader=','
map <leader>q :q<cr>
map <leader>e :bd<cr>
map <leader>l :nohlsearch<cr>
map <leader>t :!python -m doctest %<cr>
map <tab> :bn<cr>
map <space> za
nmap <c-\> :w<cr>
imap <c-\> <Esc><c-\>
set pastetoggle=<F2>

" Status line {1
set statusline=%<%F
set statusline+=%m
set statusline+=%r
set statusline+=%w                                                              
set statusline+=[%{&fileformat}]
set statusline+=%y
set statusline+=%=
set statusline+=[ASCII=%B]
set statusline+=[COL=%c,L=%l/%L]
set statusline+=[%p%%]

" Nerd Tree {1
let g:NERDTreeQuitOnOpen=1
map <leader>n :NERDTreeToggle<cr>

" Tab stop {1
 "no use tab, tab = 4 space
au Filetype python,vim set ts=4 sts=4 sw=4 expandtab
 "use tab, tab = 2 space
au Filetype html,jinja set ts=2 sts=2 sw=2 noexpandtab
 "no use tab, tab = 2 space
au Filetype javascript,css,stylus,yaml,coffee,js,less,jade set ts=2 sts=2 sw=2 expandtab

" Indent {1
au Filetype python,coffee,jade,stylus set fdm=indent

" vim:ft=vim:fdm=marker:fmr={,}
