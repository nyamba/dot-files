" nyamba vimrc, @2013

" Vundle {1
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Let Vundle manage Vundle
Bundle 'gmarik/vundle'
" My Bundles
Bundle 'tpope/vim-sensible'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'

" Basic {1
set noswapfile
set nowrap
set hlsearch
set modelines=5
set cursorline
set fillchars=fold:\ 
filetype indent on
filetype plugin on
colorscheme desert

" Key map {1
let mapleader=','
map <leader>q :q<cr>
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
au Filetype html set ts=2 sts=2 sw=2 noexpandtab
 "no use tab, tab = 2 space
au Filetype css,stylus,yaml,cofee,js,less,jade set ts=2 sts=2 sw=2 expandtab

" vim:ft=vim:fdm=marker:fmr={,}
