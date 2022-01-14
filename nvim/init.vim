"-----------------------------------
"MADRIX NEOVIM CONFIG FILE
"-----------------------------------


call plug#begin()
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdcommenter'
Plug 'jparise/vim-graphql'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'mustache/vim-mustache-handlebars'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'coc-extensions/coc-svelte'
Plug 'leafgarland/typescript-vim'
call plug#end()

" for using ctrl + / for toggling comment
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
syntax on
colorscheme monokai 
set tabstop=4
set autoindent
set wrap!
set shiftwidth=4
set number
set cindent
set guifont="Hack"
map <F5> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
set laststatus=2
set mouse=nicr
set encoding=UTF-8
let g:coc_global_extensions = [
			\ 'coc-pairs'
			\ ]
set clipboard+=unnamedplus
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:NERDTreeIgnore = ['^node_modules$']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
