"Dear Vim, please use the following configuration

"enable line numbers
set number

"set color scheme
colorscheme 256_noir

"---INDENTATION--------------

"tab is set to 2 spaces
set tabstop=2               	
"auto indented newline is 2 spaces
set shiftwidth=2    


"---STATUSLINE-----------
"always show status line
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
"delimitMate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

"---PLUGINS-----------------

call plug#begin('~/.vim/plugins')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'

call plug#end()
