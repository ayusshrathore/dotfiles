" Indentation
set autoindent
set expandtab
set shiftwidth=4 
set softtabstop=4 

" Mouse
set mouse=a

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

set termguicolors
syntax on
colorscheme onedark

" Text Editing
filetype on
filetype plugin on
filetype indent on
set showmatch
set wrap
set linebreak
set number
set cursorline
set confirm
set spell
set relativenumber

set wildmenu

" Key Bindings
" Normal Mode
nnoremap <C-s> <ESC>:w<CR> " Save
nnoremap <C-q> <ESC>:q<CR> " Quit
nnoremap <C-z> :u<CR>      " Undo


" Insert Mode
inoremap <C-s> <ESC>:w<CR> " Save
inoremap <C-q> <ESC>:q<CR> " Quit

" Visual Mode
vnoremap <C-s> <ESC>:w<CR> " Save   
vnoremap <C-q> <ESC>:q<CR> " Quit


