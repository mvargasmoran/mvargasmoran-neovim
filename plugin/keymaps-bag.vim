""---------General Mappings------------"

" Highlight TrailingWhiteSpaces
nnoremap <leader>ws :highlight Trailing_Whitespace guibg=#FA0050<cr> :match Trailing_Whitespace /\s\+$/<cr>


" First go into VISUAL and them push the lines with J/K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>pp :Telescope<cr>
"nnoremap <leader>pg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ") })<CR>

nnoremap <leader>u :UndotreeToggle<CR>

" Hop stuff
nnoremap <leader>hc :HopChar2<cr>

" YouCompleteMe
nnoremap <leader>gd :YcmComp      GoToDefinition<cr>


" More keymaps
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd h<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>vp :wincmd v<bar> :Ex <bar> :vertical resize 30<cr>
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <leader>ps :Rg<space>
nnoremap <sIlent> <C-A>= :vertical resize +5<cr>
nnoremap <silent> <C-A>- :vertical resize -5<cr>

" Use alt + hjkl to resize windows
nnoremap <Esc>j   :resize -2<CR>
nnoremap <Esc>k    :resize +2<CR>
nnoremap <Esc>h    :vertical resize -2<CR>
nnoremap <Esc>l    :vertical resize +2<CR>

" Escape redraws the screen and removes any search highlighting.
nnoremap <esc> :noh<return><esc>
