" -------------------
" Vim-Plug Extensions
" -------------------
call plug#begin()
    " Syntax highlighti and autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'fatih/vim-go'
    " Plug 'github/copilot.vim'
    " Plug 'sheerun/vim-polyglot'
    " Plug 'nvim-neorg/neorg' | Plug 'nvim-lua/plenary.nvim'

    " Plug 'nvim-treesitter/nvim-treesitter'
    " Plug 'nvim-orgmode/orgmode'


    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
    " Plug 'yggdroot/indentline'
    " Navigation
    " Plug 'Shougo/denite.nvim'
    " Plug 'tpope/vim-sensible'
    " Plug 'justinmk/vim-sneak'
    " Plug 'easymotion/vim-easymotion'
    " Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }

    " Languges
    " Plug 'plasticboy/vim-markdown'
    " Plug 'vim-pandoc/vim-pandoc'

    " Git
    " Plug tpope/vim-fugitive

    " Symbols for git diffs in files as you type.
    " Plug 'airblade/vim-gitgutter'

    " Functionality
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    " Plug 'simnalamburt/vim-mundo'
    " Plug 'terryma/vim-multiple-cursors'

    " WebDev
    Plug 'neoclide/coc-pairs'
    " Plug 'alvan/vim-closetag'
    " Plug 'docunext/closetag.vim'
    " Plug 'jiangmiao/auto-pairs'
    " Plug 'mxw/vim-jsx'
    " Plug 'mattn/emmet-vim'
    " Plug 'mlaursen/vim-react-snippets'
    " Plug 'leafgarland/typescript-vim'
    " Plug 'styled-components/vim-styled-components'
    " Plug 'jparise/vim-graphql'
    " Plug 'rettier/vim-prettier'
    " Plug 'leafgarland/typescript-vim'
    " Plug 'pangloss/vim-javascript'
    " Plug 'pangloss/vim-javascript'
    " Plug 'peitalin/vim-jsx-typescript'
    " Plug 'MaxMEllon/vim-jsx-pretty'
    " Plug 'abikos/vscode-react'

    " Apprenace
    Plug 'morhetz/gruvbox'
    " Plug 'ryanoasis/vim-devicons'
    " Plug 'yanoasis/vim-devicons'

    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Plug 'wfxr/minimap.vim'
    " Plug 'severin-lemaignan/vim-minimap'
    " Plug 'shougo/neosnippet'
    " Plug 'yggdroot/indentLine'

    " Debugging, refactoring and version control
    " Plug 'puremourning/vimspector'

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
" \ 'coc-snippets',
" \ 'coc-tag', 
" \ 'coc-highlight',

" Mappings
let mapleader="-"
" CoC Mappings
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
vmap <leader>f  <Plug>(coc-format-selected)
nnoremap <silent> gh :call CocAction('doHover')<CR>
nnoremap <leader>do <Plug>(coc-codeaction)
nnoremap <leader>f <Plug>(coc-format-selected)
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" CoC Commands
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" nmap <silent> gf <Plug>(coc-format)
nmap <F2> <Plug>(coc-rename)


nnoremap <esc> :noh<cr>

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

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
