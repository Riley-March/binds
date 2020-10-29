syntax on

set number
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hidden
set splitbelow
set splitright
set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')

Plug 'jremmen/vim-ripgrep'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'sheerun/vim-polyglot'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Color Schemes "
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme dracula

inoremap jj <ESC>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-o> :Vexplore<CR>

let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 10 

let g:fzf_layour = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
if has("gui_running")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		set guifont=Inconsolata\ for\ Powerline:h15
	endif
endif
