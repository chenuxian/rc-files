filetype plugin on
syntax on

" #############################################
" vim-plug
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'https://github.com/thinca/vim-quickrun.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

" Initialize plugin system
call plug#end()

" ############################################
" map
let mapleader = ","
let maplocalleader = ","

" quick-run
let g:quickrun_config = {
    \   "_" : {
    \       "outputter" : "message",
    \   },
\}
let g:quickrun_no_default_key_mappings = 1
nnoremap <leader>r :QuickRun<cr>

" nerd tree
map <leader>n :NERDTreeToggle<CR>

" taglist
map <f12> :Tlist<CR>

" ctags
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-g> :exec("tag ".expand("<cword>"))<CR>


" ############################################
" basic setting
set encoding=utf-8
set fileencodings=utf-8,cp950
set nu
set ai
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set ruler
set backspace=2
set history=20
set cf
set is
set hlsearch
set smd
set wrap
set lbr
set ic
set t_ut=
set tags=./tags;/

" ############################################
" theme
syntax enable
set t_Co=256
set bg=dark
colorscheme hybrid
highlight LineNr ctermfg=grey
let g:airline_theme='sol'

filetype indent on
