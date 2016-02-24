au!
set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Vundle plugins and bundles, optionals
Bundle 'vim-scripts/VimClojure'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'tmhedberg/matchit'

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
syntax on

"Make backspace work again
set bs=2

"Absolute best get out of interactive mode
inoremap jk <esc> 

set number "Show linenumbers by default
colorscheme desert "Better than default

"Show matching brace and briefly jump there
:set showmatch
:set matchtime=3

" Searching
set incsearch " Search while entering characters
set hlsearch  " Hilight results
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"Open splits more naturally down and right
set splitbelow
set splitright

"Navigate splits with ctrl+direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Use matchit that ships with vim
runtime macros/matchit.vim
