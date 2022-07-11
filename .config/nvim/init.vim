set nocompatible
filetype off

let mapleader = ","

"" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " Plugin Manager
Plugin 'itchyny/lightline.vim' " Vim Powerline
Plugin 'itchyny/vim-gitbranch' " Git branch name in powerline
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

filetype plugin indent on

"" General
set path+=**
set wildmenu
set noswapfile
set t_Co=256
set number relativenumber
set clipboard=unnamedplus
set paste
syntax enable
let g:rehash256 = 1
let g:Powerline_symbols = 'fancy'

"" Lightline
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
	      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
	      \   'gitbranch': 'gitbranch#name'
      \ },
\ }

set laststatus=2
set noshowmode

"" Editing .vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

"" Leader mappings
""" breathe / Breathe
nnoremap <leader>b mmo<esc>`m
nnoremap <leader>B mmO<esc>`m

"" Abbreviations
iabbrev @@@ myemailaddress@test.com

"" History browsing
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>

"" Seamless tmux and vim navigation
"let g:tmux_navigator_no_mappings = 1

"nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
"nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
"nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
"nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
