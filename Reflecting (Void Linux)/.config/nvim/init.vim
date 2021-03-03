" sane dafaults
set noerrorbells
set noshowmatch
set noshowmode
set hidden
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.config/nvim/undodir
set undofile
set nohlsearch
set incsearch
set shortmess+=c
set shell=/bin/bash

" set tabs(as spaces) sizes
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent
set expandtab

" display line numbers
set number
set relativenumber

set updatetime=50
set colorcolumn=80
set scrolloff=5

" mappings with leader key
let mapleader = " "

" -----------------------------------------------------------------------------
" binds
" -----------------------------------------------------------------------------

" movement and reiszing across splits
noremap <leader>H :vertical resize +5<CR>
noremap <leader>J :resize -5<CR>
noremap <leader>K :resize +5<CR>
noremap <leader>L :vertical resize -5<CR>

" other bindings
nnoremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>f <cmd>Telescope live_grep<cr>
nnoremap <leader>g :Goyo<CR>

" coc bindings
nnoremap <silent>gd <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent>r <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent>K  <cmd>lua vim.lsp.buf.hover()<CR>