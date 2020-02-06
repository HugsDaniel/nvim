set relativenumber
let mapleader = ","
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 3 
"let g:netrw_winsize = 25
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
set shiftwidth=2
set clipboard=unnamedplus

nnoremap <C-k> gt
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

filetype plugin indent on


call plug#begin('~/.local/share/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme OceanicNext

let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert
