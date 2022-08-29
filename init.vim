"========================================
"============ PLUGINS ===================
call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'edkolev/tmuxline.vim'
Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roxma/vim-tmux-clipboard'
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'

call plug#end()



"========================================
"============ SETTINGS ==================

set nocompatible
set noshowmode

" color
colorscheme nord

"=====================================================
"===================== STATUSLINE ====================
"
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

