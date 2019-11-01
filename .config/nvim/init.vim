" system clipboard
set clipboard=unnamedplus
" line numbering
set number
" automatically save if :make is called
set autowrite
" filetype context
filetype on
filetype plugin on
filetype indent on
" probably should make this automatic again
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" auto compile markdown documents
autocmd BufWrite *.md :! cm ~/%

" load plugins
so ~/.config/nvim/plugins.vim

" syntax highlighting
syntax on
" disable vim-markdown folding
"let g:vim_markdown_folding_disabled = 1
" OneDark theme config
let g:onedark_terminal_italics=1
let g:onedark_termcolors=16
colorscheme onedark

" disable native vim notifier text (lightline provides notifiers)
set noshowmode

" lightline status bar
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" open nerdtree if vim was opened without a specified file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open nerdtree if vim was opened with a specified directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" open nerdtree on ctrl+e
map <C-e> :NERDTreeToggle<CR>
" golang LST
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_autosave = 1

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient 
let g:go_def_mapping_enabled = 0
" pweety
let g:go_highlight_types = 1
" coc.vim rape
so ~/.config/nvim/coc.vim
