" Vim-Plug
call plug#begin()

Plug 'tpope/vim-sensible'

" Themes
Plug 'morhetz/gruvbox'
Plug 'gertjanreynaert/cobalt2-vim-theme'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Web Developer
Plug 'mattn/emmet-vim'
call plug#end()


" :CocInstall coc-snippets
" coc config
let g:coc_global_extensions = [
	\ 'coc-pairs',
  	\ 'coc-snippets',
	\ 'coc-prettier',
\ ]
"	\ 'coc-tsserver',
"	\ 'coc-eslint',
"	\ 'coc-json'

" Commands
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <C-n> :NERDTreeToggle<CR>

" Functionality
set clipboard+=unnamed " Enable System Clipboard
map <S-k> <Nop>

set mouse=a                " Visual select text with mouse
set updatetime=300

" Search
set ignorecase             " Search Ignore Case
set wildmenu               " Better command-line completion

" Apprenace
colorscheme gruvbox
set cmdheight=1 " 2
set number                 " Enable number lines
set relativenumber         " Relative number line
set syntax                 " Syntax Highlight
set wrap!                  " Disable Word Wrap

set tabstop=4              " Width of a rendered tab
set shiftwidth=8           " How many spaces will TAB will add
set expandtab              " Convert tabs to spaces
