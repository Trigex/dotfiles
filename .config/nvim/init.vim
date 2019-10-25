" syntax highlighting
syntax enable
" system clipboard
set clipboard=unnamedplus
" line numbering
set number

filetype on
filetype plugin on
filetype indent on

" auto compile markdown documents
autocmd BufWrite *.md :! cm ~/%

" disable native vim notifier text
set noshowmode

" load plugins
so ~/.config/nvim/plugins.vim

set background=light

" lightline status bar
let g:lightline = {
      \ 'colorscheme': 'wombat',
       \ }

" open nerdtree if vim was opened without a specified file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open nerdtree if vim was opened with a specified directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" open nerdtree on ctrl+e
map <C-e> :NERDTreeToggle<CR>

" enable deoplete autocompletion
let g:deoplete#enable_at_startup = 1

" use omni completion for Go files
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
