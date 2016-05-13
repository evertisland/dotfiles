"Dear Vim, please use the following configuration

"""ALIASES"""
"""""""""""""



" Use F2 to save in insert mode
inoremap <F2> <c-o>:w<cr>


"""GENERAL"""
""""""""""""
"disable swap files creation
set nowsapfile

"enable line numbers
set number

"enable deletion with backspace
set backspace=indent,eol,start

"""WINDOWS"""
"""""""""""""
"Use Control-h/j/k/l to toggle windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-k>k
map <C-l> <C-l>l

"""COLOURS"""
"""""""""""""

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

"set distinctive cursor colour
autocmd ColorScheme * highlight Cursor ctermfg=196 ctermbg=196

"---INDENTATION-------------

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
