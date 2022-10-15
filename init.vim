set number

let g:ale_completion_enabled = 1
call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale' 
Plug 'ellisonleao/gruvbox.nvim'

call plug#end()

set background=dark " or light if you want light mode
colorscheme gruvbox

let g:ale_linters = {'rust': ['analyzer']}
