set relativenumber                      "relative jumps, digits+j goes down, digits+k up
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
" I'm using spelunker
"set spell
set nospell
set signcolumn=yes                      "put an E (error) mark at the a new starting column
set colorcolumn=80
" highlight ColorColumn ctermbg=lightgray guibg=lightgray
set autoread
set scrolloff=8
set clipboard=unnamedplus               " Copy paste between vim and everything else
set cmdheight=4                         " More space for displaying messages

" Vim which key
set timeout
" By default timeoutlen is 1000 ms
set timeoutlen=500
" This is the split behavior I'm used to
set splitright


" Some sane stuff that prime's recommended
" https://www.youtube.com/watch?v=hSHATqh8svM
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
" do the join line thing, 
" set a mark, zenter the cursor, ackshually do the join, jump back to mark
nnoremap J mzJ`z 
nnoremap <C-j> :cnext<CR>zzzv

" Undo break points 
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

