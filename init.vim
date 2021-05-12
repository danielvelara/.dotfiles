" Vim-Plug
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

" Appearance
Plug 'morhetz/gruvbox'
Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'vim-airline/vim-airline'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'rakr/vim-one'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Web Developer
Plug 'mattn/emmet-vim'
Plug 'docunext/closetag.vim'

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
nmap <A-b> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Confirm Completiton
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Functionality
set clipboard+=unnamed " Enable System Clipboard
map <S-k> <Nop>

set mouse=a                " Visual select text with mouse
set updatetime=300

" Search
set ignorecase             " Search Ignore Case
set wildmenu               " Better command-line completion

" Apprenace
" colorscheme gruvbox
colorscheme one
set t_Co=256
set background=dark
set cmdheight=1 " 2
set number                 " Enable number lines
set relativenumber         " Relative number line
set syntax                 " Syntax Highlight
set wrap!                  " Disable Word Wrap
set cursorline
" set cursorcolumn
set colorcolumn=80
set termguicolors

set tabstop=4              " Width of a rendered tab
set shiftwidth=4           " How many spaces will TAB will add
set expandtab              " Convert tabs to spaces

"Enable folding
set foldmethod=indent
set foldlevel=99

au VimLeave * set guicursor=a:ver100-blinkwait175-blinkoff150-blinkon175

" set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
