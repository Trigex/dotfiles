call plug#begin(stdpath('data') . '/plugged')
" powerline-ish status bar
Plug 'itchyny/lightline.vim'
" fs tree
Plug 'scrooloose/nerdtree'
" focus mode
Plug 'junegunn/goyo.vim'
" vim programming language pack, lang rules, highlighting, etc
Plug 'sheerun/vim-polyglot'
" markdown support
"Plug 'plasticboy/vim-markdown'
" json support
Plug 'elzr/vim-json'
" onedark theme
Plug 'joshdick/onedark.vim'
" general vim go support with a ton of functionality
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()
