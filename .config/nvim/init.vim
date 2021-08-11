" -------------------
" Vim-Plug Extensions
" -------------------
call plug#begin()
" Language
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Integrations
" Interface
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'wojciechkepka/vim-github-dark'
" Navigation
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Commands
" Editing
Plug 'tpope/vim-surround'
call plug#end()


" ---------------
"  coc-extensions
" ---------------
let g:coc_global_extensions = [
	\ 'coc-pyright',
	\ 'coc-html',
	\ 'coc-css',
	\ 'coc-emmet',
    \ 'coc-prettier',
	\ 'coc-json',
	\ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-java',
\ ]


" --------
" Mappings
" --------
nmap <A-b> :NERDTreeToggle<CR>
nnoremap <silent> K :call CocAction('doHover')<CR>
inoremap <silent><expr> <c-space> coc#refresh()
nmap <leader>do <Plug>(coc-codeaction)
" nmap <leader>rn <Plug>(coc-rename)
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" --------
" NERDTree
" --------
let g:NERDTreeWinSize=20
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ----------------
" Markdown Preview
" ----------------
let g:mkdp_auto_start = 0
let g:mkdp_open_to_the_world = 0
nmap <C-m> <Plug>MarkdownPreviewToggle


" -------------
" Functionality
" -------------
" map <S-k> <Nop>
set ignorecase            " Search Ignore Case
set wildmenu              " Better command-line completion
" set clipboard+=unnamed  " Enable System Clipboard
" set mouse=a             " Visual select text with mouse
" set updatetime=300


" ---------
" Apprenace
" ---------
let g:gh_color = "soft"
colorscheme ghdark
set number                 " Enable number lines
set relativenumber         " Relative number line
set syntax                 " Syntax Highlight
set wrap!                  " Disable Word Wrap
set termguicolors
set tabstop=4              " Width of a rendered tab
set shiftwidth=4           " How many spaces will TAB will add
set expandtab              " Convert tabs to spaces
" set foldmethod=indent    " Enable folding
" set foldlevel=99
" set t_Co=256
" set background=dark
" set cmdheight=1 " 2
" set cursorline
" set cursorcolumn
" set colorcolumn=80



" -----
" Fixes
" -----
au VimLeave * set guicursor=a:ver100-blinkwait175-blinkoff150-blinkon175
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
