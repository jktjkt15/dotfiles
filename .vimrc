set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()

filetype plugin indent on


set path+=**
set wildmenu
set noswapfile
set t_Co=256
set number relativenumber
set clipboard=unnamedplus
syntax enable
let g:rehash256 = 1

:imap ii <Esc>

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
