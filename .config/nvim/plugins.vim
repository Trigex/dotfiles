call plug#begin(stdpath('data') . '/plugged')
" powerline-ish status bar
Plug 'itchyny/lightline.vim'
" general vim go support with a ton of functionality
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" fs tree
Plug 'scrooloose/nerdtree'
" vim autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" focus mode
Plug 'junegunn/goyo.vim'
call plug#end()
