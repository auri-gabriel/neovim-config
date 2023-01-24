set number

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ellisonleao/gruvbox.nvim'
Plug 'andweeb/presence.nvim'

call plug#end()
let g:ale_completion_enabled = 1

set background=dark " or light if you want light mode
colorscheme gruvbox

let g:ale_linters = {'rust': ['analyzer']}
