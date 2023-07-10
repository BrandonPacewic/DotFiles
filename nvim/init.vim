" Copyright (c) Brandon Pacewic
" SPDX-License-Identifier: MIT

call plug#begin('C:/Users/pacew/AppData/Local/nvim/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
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

" Latex config 
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer='SumatraPDF'
let g:vimtex_quickfix_mode=0
set conceallevel=0
let g:tex_conceal='abdmg'

" Spell check
" Use Ctrl + l to correct the previous spelling mistake
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Snippets configuration
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" Auto save
augroup autosave
    autocmd!
    autocmd TextChanged,TextChangedI <buffer> silent! write
augroup END
