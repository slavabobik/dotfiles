call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'	
Plug 'edkolev/tmuxline.vim'

call plug#end()

" COLOR SCHEME
colorscheme nord



" SETTINGS
set noshowmode " get rid of vim modes



" PLUGINS
" lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" tmuxline
let g:tmuxline_theme = 'lightline'
let g:tmuxline_preset = 'minimal'
