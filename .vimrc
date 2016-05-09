"Dear Vim, please use the following configuration

"--- ALIASES ---
inoremap <F2> <c-o>:w<cr>

"enable line numbers
set number

"set color scheme
"colorscheme 256_noir
colorscheme railscasts
"For windows
if !has("gui_running")
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    colorscheme 256_noir
endif

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
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

"---NERDTREE----------------
autocmd vimenter * NERDTree

"---PLUGINS-----------------

call plug#begin('~/.vim/plugins')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'scrooloose/nerdtree'

call plug#end()
