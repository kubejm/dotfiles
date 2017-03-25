syntax on
colorscheme predawn
 
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set smartindent
 
set number
set clipboard=unnamed
set backspace=indent,eol,start
set laststatus=2
set noshowmode
set timeout timeoutlen=1000 ttimeoutlen=100

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=240
 
call plug#begin('~/.vim/plugged')
  
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-airline-colornum'
Plug 'christoomey/vim-tmux-navigator'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'nathanaelkane/vim-indent-guides'
 
call plug#end()

" airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0

" cursorline
set cursorline
