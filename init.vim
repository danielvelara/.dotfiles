" Vim-Plug
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()


set number                 " Enable number lines
set relativenumber         " Relative number line
set syntax                 " Syntax Highlight
set wrap!                  " Disable Word Wrap

map <S-k> <Nop>
set clipboard+=unnamed " Enable System Clipboard

set mouse=a                " Visual select text with mouse

" Search
set ignorecase             " Search Ignore Case

set wildmenu               " Better command-line completion

" Themes
" colorscheme gruvbox
