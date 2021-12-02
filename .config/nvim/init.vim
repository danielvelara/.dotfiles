" -------------------
" Vim-Plug Extensions
" -------------------
call plug#begin()
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

"  coc-extensions
let g:coc_global_extensions = [
	\ 'coc-html',
	\ 'coc-css',
	\ 'coc-emmet',
    \ 'coc-prettier',
	\ 'coc-json',
	\ 'coc-tsserver',
    \ 'coc-eslint',
	\ 'coc-pyright',
    \ 'coc-java',
	\ 'coc-pairs',
\ ]

" Mappings
let mapleader="-"
" CoC Mappings
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
vmap <leader>f  <Plug>(coc-format-selected)
nnoremap <silent> gh :call CocAction('doHover')<CR>
nnoremap <leader>do <Plug>(coc-codeaction)
nnoremap <leader>f <Plug>(coc-format-selected)
nmap <F2> <Plug>(coc-rename)
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Markdown Preview
let g:mkdp_auto_start = 0
let g:mkdp_open_to_the_world = 0
nmap <C-m> <Plug>MarkdownPreviewToggle

" Functionality
set ignorecase            " Search Ignore Case
set wildmenu              " Better command-line completion
" set clipboard+=unnamed  " Enable System Clipboard
" set mouse=a             " Visual select text with mouse
" set updatetime=300

" Apprenace
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
set bg="light"
set number          " Enable number lines
set relativenumber  " Relative number line
set syntax          " Syntax Highlight
set wrap!           " Disable Word Wrap
set termguicolors
set tabstop=4       " Width of a rendered tab
set shiftwidth=4    " How many spaces will TAB will add
set expandtab       " Convert tabs to spaces
set background=dark
" set foldmethod=indent    " Enable folding
" set foldlevel=99
" set t_Co=256
" set cmdheight=1 " 2
" set cursorline
" set cursorcolumn
" set colorcolumn=80

" Fixes
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
au VimLeave * set guicursor=a:ver100-blinkwait175-blinkoff150-blinkon175
