:set number
:set relativenumber
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=4
:set scrolloff=5

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/preservim/tagbar' " sudo pacman -S ctags
Plug 'https://github.com/neoclide/coc.nvim'
" To use coc.nvim 
" 1. cd ~/.local/share/nvim/plugged/coc.nvim
" 2. sudo npm i -g yarn
" 3. yarn install
" 4. yarn build
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

set encoding=UTF-8
call plug#end()

colorscheme catppuccin-mocha" catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
" vim.cmd.colorscheme catppuccin-mocha"

let g:airline_theme = 'catppuccin'

nmap <F8> :TagbarToggle<CR>

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
