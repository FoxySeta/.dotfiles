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

call plug#begin('~/.vim/plugged')
  " binds:
  " - gcc = comments current line
  " - gc = comments current selection
  Plug 'tpope/vim-commentary'
  Plug 'sheerun/vim-polyglot'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'liuchengxu/vista.vim'
  Plug 'honza/vim-snippets'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'airblade/vim-gitgutter'

  Plug 'haishanh/night-owl.vim'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme night-owl

let g:lightline = { 'colorscheme': 'nightowl' }
let g:vista_default_executive = 'coc'

" mappings with leader key
let mapleader = " "

" movement and reiszing across splits
noremap <C-W>H :vertical resize +5<CR>
noremap <C-W>J :resize -5<CR>
noremap <C-W>K :resize +5<CR>
noremap <C-W>L :vertical resize -5<CR>

" other bindings
nnoremap <leader>p <cmd>GFiles<cr>
nnoremap <leader>f <cmd>Rg<cr>
nnoremap <leader>v <cmd>Vista!!<cr>
nnoremap <leader>b <cmd>CocCommand latex.Build<cr>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>qf <Plug>(coc-fix-current)

" Unicode
imap <buffer> \forall ∀
imap <buffer> \to →
imap <buffer> \lambda λ
imap <buffer> \Sigma Σ
imap <buffer> \exists ∃
imap <buffer> \equiv ≡

"elpi
autocmd BufRead,BufNewFile *.elpi set filetype=lprolog

autocmd FileType lprolog syn match   lprologIdentifier  "\<\l[-a-zA-Z\.+*/\\^<>=`'~?@#$&!_]*\>"
autocmd FileType lprolog syn region  lprologClause start="^\<\l[-a-zA-Z\.+*/\\^<>=`'~?@#$&!_]*\>" end=" \|:-\|\."
autocmd FileType lprolog syn match lprologClauseSymbols ":-"
autocmd FileType lprolog syn match lprologClauseSymbols "\."
autocmd FileType lprolog hi def link lprologClauseSymbols Type

autocmd FileType lprolog syn keyword elpiKeyword mode macro type pred namespace rule constraint uvar shorten
autocmd FileType lprolog syn match elpiKeyword ":before"
autocmd FileType lprolog syn match elpiKeyword ":after"
autocmd FileType lprolog syn match elpiKeyword ":name"
autocmd FileType lprolog syn match elpiMacro "@\(\w\|-\)\+"
autocmd FileType lprolog syn match elpiSpill "{"
autocmd FileType lprolog syn match elpiSpill "}"
autocmd FileType lprolog syn region elpiQuotation start="{{" end="}}" contains=@elpiAntiQuotation
autocmd FileType lprolog hi def link elpiKeyword Keyword
autocmd FileType lprolog hi def link elpiMacro Special
autocmd FileType lprolog hi def link elpiSpill Special

