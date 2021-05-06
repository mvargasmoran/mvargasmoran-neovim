""---------General Mappings------------"

" Highlight TrailingWhiteSpaces
nnoremap <leader>ws :highlight Trailing_Whitespace guibg=#FA0050<cr> :match Trailing_Whitespace /\s\+$/<cr>

" First go into VISUAL and them push the lines with J/K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>u :UndotreeToggle<CR>

" Hop stuff
nnoremap <leader>hc :HopChar2<cr>

" YouCompleteMe
nnoremap <leader>gd :YcmComp      GoToDefinition<cr>


" More keymaps
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>vp :wincmd v<bar> :Ex <bar> :vertical resize 30<cr>
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <leader>ps :Rg<space>
"nnoremap <sIlent> <C-A>= :vertical resize +5<cr>
"nnoremap <silent> <C-A>- :vertical resize -5<cr>

" Use alt + hjkl to resize windows
nnoremap <leader>rj   :resize -2<CR>
nnoremap <leader>rk    :resize +2<CR>
nnoremap <leader>rh    :vertical resize -2<CR>
nnoremap <leader>rl    :vertical resize +2<CR>

" Escape redraws the screen and removes any search highlighting.
"nnoremap <esc> :noh<return><esc>


" Which Key stuff (stolen from emacs it seems)
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
