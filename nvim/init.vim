" Copyright (c) Brandon Pacewic
" SPDX-License-Identifier: MIT

call plug#begin('C:/Users/pacew/AppData/Local/nvim/plugged')
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'tomasiser/vim-code-dark'
call plug#end()

" Theme
colorscheme codedark

" Line numbers
set number
set relativenumber

" Enable mouse
set mouse=a

" Syntax highlighting
syntax on

" Fast intellisense update time
set updatetime=300

" Default encoding
set encoding=utf-8

" Tabs to spaces
set tabstop=4 shiftwidth=4 expandtab

" Always show the signcolumn; avoids shifting text after ever diagnostics
" update
set signcolumn=yes

" Accept intellisense with tab
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

