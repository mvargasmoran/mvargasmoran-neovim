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
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'

" snippets needed for nvim-cmp
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'                           " Telescope icons
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } " better fuzzy find
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'

" Svelte I like Svelte
Plug 'maxmellon/vim-jsx-pretty'
Plug 'w0rp/ale'
Plug 'ap/vim-css-color'

Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'leafOfTree/vim-svelte-plugin'

" Vue
Plug 'leafOfTree/vim-vue-plugin'

" Infra as code
" Plug 'hashivim/vim-terraform'
" Plug 'hashivim/vim-consul'
" Plug 'hashivim/vim-packer'

" Sorry boys I need my multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dstein64/vim-startuptime'

" Editor Stuff
Plug 'ThePrimeagen/harpoon'
Plug 'phaazon/hop.nvim'
Plug 'mbbill/undotree'
Plug 'tversteeg/registers.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'mihaifm/bufstop'
" Plug 'mattn/emmet-vim'

" Vim helpers
Plug 'liuchengxu/vim-which-key'
Plug 'kamykn/spelunker.vim'

" Vim toys
Plug 'andweeb/presence.nvim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'psliwka/vim-smoothie'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

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
Plug 'vigoux/oak'
Plug 'mvargasmoran/shadows-die-twice-vim'
Plug 'vim-conf-live/vimconflive2021-colorscheme'

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
"colorscheme ayu
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
"colorscheme tokyonight
colorscheme shadows-die-twice
"colorscheme vimconflive-2021

"colorscheme iceberg
"colorscheme shado
"colorscheme xshado
"colorscheme simple-dark

"------------Emmet------------------------------------------------------------"
" Emmet has the worst trigger in vim, for that cord I'm better using Emacs
" let g:user_emmet_install_global = 0
" autocmd FileType html,css,jsx,tsx EmmetInstall
" let g:user_emmet_leader_key='<C-s>'

"------------LUA (here lies the nvim-lspconfig stuff)-------------------------"
" Fended means Friendship ended
" Check the files inside to get help on how to install each LSP server (most
" are just running an "npm install -g" command
lua require("fended")

