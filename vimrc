execute pathogen#infect()
set t_Co=256
syntax on           
filetype plugin indent on
colorscheme lucius
LuciusBlack

let mapleader=" "       		" leader is space
set backspace=2         		" make backspace work like most other apps
set backspace=indent,eol,start
set tabstop=4           		" number of visual spaces per TAB
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set softtabstop=4       		" number of spaces in tab when editing
set expandtab           		" tabs are spaces
set number              		" show line numbers
set showcmd             		" show command in bottom bar
set cursorline          		" highlight current line
set wildmenu            		" visual autocomplete for command menu
set lazyredraw          		" redraw only when we need to.
set showmatch           		" highlight matching [{()}]
set incsearch           		" search as characters are entered
set hlsearch            		" highlight matches
set ignorecase          		" case insensitive 
set smartcase           		" use case if any caps used
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set hidden              		" hides buffer instead of force :w before open a new file

set visualbell                  " don't beep
set noerrorbells                " don't beep

" easy navigation
nnoremap <leader><down> <C-W><C-J>
nnoremap <leader><up> <C-W><C-K>
nnoremap <leader><space> <C-W><C-W>
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
