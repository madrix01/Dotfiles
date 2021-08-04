"-----------------------------------
"MADRIX NEOVIM CONFIG FILE
"-----------------------------------


call plug#begin()
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set tabstop=4
set shiftwidth=4
set number
set guifont="Hack"
map <F5> :NERDTreeToggle<CR>
set laststatus=2
set mouse=nicr
set encoding=UTF-8
let g:coc_global_extensions = [
			\ 'coc-pairs'
			\ ]
set clipboard+=unnamedplus
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
