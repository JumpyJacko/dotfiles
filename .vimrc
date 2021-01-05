set nocompatible

filetype off

syntax on

filetype plugin indent on

call plug#begin()

Plug 'jooize/vim-colemak'

Plug 'honza/vim-snippets'

Plug 'preservim/nerdtree'

Plug 'itchyny/lightline.vim'

Plug 'joshdick/onedark.vim'

Plug 'morhetz/gruvbox'

Plug 'junegunn/rainbow_parentheses.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'hugolgst/vimsence'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

set modelines=0

set number

set ruler

set visualbell

set encoding=utf-8

set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set noshowmode 

let g:lightline = {
      \ 'colorscheme': 'jellybeans'
      \ }

let g:rainbow#blacklist = [233, 234]
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-pairs',
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-json',
      \ ]

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

inoremap NE <Esc>
nmap <C-n> :NERDTreeToggle<CR>

set laststatus=2

" Golang auto complete | vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

autocmd vimenter * NERDTree
autocmd vimenter * RainbowParentheses
