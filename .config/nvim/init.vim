" system clipboard
set clipboard=unnamedplus

" hybrid relative line numbers
set number relativenumber
set nu rnu

" indentation rules
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" filetype context
filetype on
filetype plugin on
filetype indent on

" make binding
nnoremap <F4> :make!<cr>
nnoremap <F5> :!./my_great_program<cr>

" syntax highlighting
syntax on

" plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
call plug#end()

" lightline theme
let g:lightline = {
  \ 'colorscheme': 'dracula'
\}

" disable native status bar
set laststatus=2
set noshowmode

" Better display for messages
set cmdheight=2
