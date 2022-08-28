set number

let g:ale_completion_enabled = 1
call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale' 

call plug#end()

let g:ale_linters = {'rust': ['analyzer']}