"set relativenumber                      "relative jumps, digits+j goes down, digits+k up
"set mouse=a
set nu                                  "will show the current "real" line number instead of relative 0
set backspace=indent,eol,start
set nohlsearch
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set noerrorbells
set nowrap
set noswapfile
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set incsearch
set ignorecase
set smartcase
set ruler
"set spell
set nospell
set signcolumn=yes                      "put an E (error) mark at the a new starting column
set colorcolumn=80
highlight ColorColumn ctermbg=lightgray guibg=lightgray
set autoread
set scrolloff=8
set clipboard=unnamedplus               " Copy paste between vim and everything else
set cmdheight=4                         " More space for displaying messages

" Vim which key
set timeout
" By default timeoutlen is 1000 ms
set timeoutlen=500
set splitright
