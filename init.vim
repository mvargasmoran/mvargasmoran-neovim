"NEOVIM's specific init file

"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost init.vim source %
augroup END

let mapleader = ' ' "SPACE key as leader, Theprimeagen explains some 100ms thing, I believe him, this isn't supposed to be slow web stuff

"---------General Mappings------------"
"Edit Vimrc File easily
nmap <Leader>ev :tabedit $MYVIMRC<cr>
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

"---------Life savers -----------------"
" Match Trailing_Whitespace /\s\+$/
highlight Trailing_Whitespace guibg=#FA0050

augroup Trailing_Whitespace_Group
  autocmd!
  "autocmd BufEnter,InsertLeave * match Trailing_Whitespace /\s\+$/
  autocmd InsertLeave * match Trailing_Whitespace /\s\+$/
augroup END

"-------------Rest of the stuff-----------"
set exrc " check for local .vimrc when running 'vim .' to open vim in dir
syntax on
set hidden
set nocompatible "Don't let the old VI bother you

"------------Plugins Yay!-------------"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Before going to the regular plugins I like to load colorschems and settings
" in another file
call plug#begin()
" Coding
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'neovim/nvim-lspconfig'


" Sorry boys I need my multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'dstein64/vim-startuptime'

" Editor Stuff
Plug 'phaazon/hop.nvim'
Plug 'mbbill/undotree'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'mattn/eMmet-vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'tversteeg/registers.nvim'
Plug 'voldikss/vim-floaterm'

" Colors
"Plug 'colepeters/spacemacs-theme.vim' " This is the important color
"Plug 'kyazdani42/blue-moon'
Plug 'farfanoide/vim-facebook'
Plug 'arcticicestudio/nord-vim'
"Plug 'cocopon/iceberg.vim'
"Plug 'morhetz/gruvbox'
"Plug 'ayu-theme/ayu-vim'
"Plug 'altercation/vim-colors-solarized'
call plug#end()

"------------Aestetics--------------"
set t_Co=256

" Things made for spacemacs theme, which I like
set background=dark
if (has("termguicolors"))
    set termguicolors
endif

set background=dark
" let ayucolor="dark"   " for dark version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="light"  " for light version of theme
" "colorscheme ayu
"
"
"
" "colorscheme spacemacs-theme
" "colorscheme facebook
" "colorscheme gruvbox
" "colorscheme iceberg
" "colorscheme blue-moon
colorscheme nord


"------------Emmet---------------------"
" Emmet has the worst trigger in vim, for that cord I'm better using Emacs
let g:user_emmet_install_global = 0
autocmd FileType html,css,jsx EmmetInstall
let g:user_emmet_leader_key='<C-s>'

