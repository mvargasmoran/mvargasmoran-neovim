"Friendship Ended with prepackaged vim
"NEOVIM's specific init file--------------------------------------------------"



"-------------Auto-Commands---------------------------------------------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost init.vim source %
augroup END

let mapleader = ' ' "SPACE key as leader, Theprimeagen explains some 100ms thing, I believe him, this isn't supposed to be slow web stuff

"------------Plugins Yay!-----------------------------------------------------"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Coding
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'

" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'                           " Telescope icons

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'

" Svelte I like Svelte
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'w0rp/ale'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'ap/vim-css-color'

" Sorry boys I need my multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dstein64/vim-startuptime'

" Editor Stuff
"Plug 'ThePrimeagen/harpoon'
Plug 'phaazon/hop.nvim'
Plug 'mbbill/undotree'
Plug 'tversteeg/registers.nvim'
Plug 'mattn/eMmet-vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'

" Vim helpers
Plug 'liuchengxu/vim-which-key'

" Vim toys
Plug 'andweeb/presence.nvim'
Plug 'mvargasmoran/rubberduck.nvim'
Plug 'kamykn/spelunker.vim'

" Colors
Plug 'colepeters/spacemacs-theme.vim' " This is the important color
Plug 'kyazdani42/blue-moon'
Plug 'farfanoide/vim-facebook'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'Shadorain/shadotheme'
Plug 'ghifarit53/tokyonight-vim'
Plug 'tek256/simple-dark'
Plug 'mvargasmoran/shadows-die-twice-vim'
call plug#end()

"------------Aestetics--------------------------------------------------------"
set t_Co=256

" Things made for spacemacs theme, which I like
if (has("termguicolors"))
    set termguicolors
endif

set background=dark
let ayucolor="light"  " for light version of theme
let ayucolor="dark"   " for dark version of theme
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1
"colorscheme tokyonight
"colorscheme shadows-die-twice

"colorscheme iceberg
"colorscheme shado
"colorscheme xshado
"colorscheme simple-dark

"------------Emmet------------------------------------------------------------"
" Emmet has the worst trigger in vim, for that cord I'm better using Emacs
let g:user_emmet_install_global = 0
autocmd FileType html,css,jsx EmmetInstall
let g:user_emmet_leader_key='<C-s>'


"------------LUA (here lies the nvim-lspconfig stuff)-------------------------"
" Fended means Friendship ended
" Check the files inside to get help on how to install each LSP server (most
" are just running an "npm install -g" command
lua require("fended")
lua require("telescope").load_extension("rubberduck")

" Check if there's lsp attached
" lua print(vim.inspect(vim.lsp.buf_get_clients()))
