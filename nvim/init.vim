" Checks to see if vim plug is already installed if not install it
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugin Manager
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

" Set the terminal colors
if (has("termguicolors"))
    set termguicolors
endif
let g:airline_theme='dracula'

" Removes annoying background color in ts syntax
let g:dracula_italic = 0

" Allows syntax highlighting to not get out of sync
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" FZF Properties
let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.6 } }
let $FZF_DEFAULT_OPTS='--reverse'

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" System Properties
syntax enable
colorscheme dracula
set nu
set relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set splitbelow
set splitright
set rtp+=/usr/local/opt/fzf

" Keybindings
nnoremap <SPACE> <Nop>
let mapleader = " "
inoremap jj <ESC>
nnoremap <C-p> :GFiles<CR>
nnoremap <silent> K :call CocAction('doHover')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>do <Plug>(coc-codeaction)
