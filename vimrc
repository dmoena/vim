execute pathogen#infect()
set t_Co=256
syntax on           
filetype plugin indent on
colorscheme lucius
LuciusBlack

let mapleader=","       " leader is comma
set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" highlight last inserted text
nnoremap gV `[v`]
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" open ag.vim
nnoremap <leader>a :Ag
set runtimepath^=~/.vim/bundle/ag

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
