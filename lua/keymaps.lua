-- Diagnostic keymaps
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Oil.nvim thingies
vim.keymap.set('n', "<Leader>o", '<CMD>Oil<CR>', { desc = 'Open Oil File explorer thingy' })
-- Imported Keymaps
-- push lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- move around splits
-- vim.keymap.set('n', '<leader>wh', ':wincmd h<cr>')
-- vim.keymap.set('n', '<leader>wj', ':wincmd j<cr>')
-- vim.keymap.set('n', '<leader>wk', ':wincmd k<cr>')
-- vim.keymap.set('n', '<leader>wl', ':wincmd l<cr>')

-- Use alt + hjkl to resize windows
-- vim.keymap.set('n', '<leader>rj', ':resize -2<CR>')
-- vim.keymap.set('n', '<leader>rk', ':resize +2<CR>')
-- vim.keymap.set('n', '<leader>rh', ':vertical resize -2<CR>')
-- vim.keymap.set('n', '<leader>rl', ':vertical resize +2<CR>')

-- This feels like emacs cycling buffers, feels like home
vim.keymap.set('n', '<C-x>j', ':bp<CR>')
vim.keymap.set('n', '<C-x>h', ':bp<CR>')
vim.keymap.set('n', '<C-x>k', ':bn<CR>')
vim.keymap.set('n', '<C-x>l', ':bn<CR>')

-- TL;DR; This basically puts what you yank into the systems clipboard.
-- this put yank stuff on the * (clipboard) register.
vim.keymap.set({ 'n', 'v' }, '<Leader>y', '"*y')

---------General Mappings----------------------------------------------------"
-- Edit Vimrc File easily
vim.keymap.set('n', '<Leader>ev', ':tabedit $MYVIMRC<cr>')
vim.keymap.set('n', '<Leader>ez', ':tabedit ~/.zshrc<cr>')
vim.keymap.set('n', '<Leader>eh', ':tabedit /etc/hosts<cr>')
vim.keymap.set('n', '<Leader>ep', ':tabedit ~/Code/nvimThings<cr>')
vim.keymap.set('n', '<Leader>eg', ':tabedit ~/.gitconfig<cr>')

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
-- ":Telescope file_browser<CR>",
vim.api.nvim_set_keymap(
  "n",
  "<space>pr",
  "<cmd>lua require('telescope').extensions.file_browser.file_browser()<CR>",
  { noremap = true }
)
-- utils.map('n', '<leader>fb', "<cmd>lua require('telescope').extensions.file_browser.file_browser({path =  vim.fn.expand('%:p:h')})<CR>", silent_noremap)

vim.api.nvim_set_keymap(
  "n",
  "<leader>pe",
  "<cmd>lua require('telescope').extensions.file_browser.file_browser({path =  vim.fn.expand('%:p:h')})<CR>",
  { noremap = true }
)

--  { noremap = true, cwd_to_path = true }
-- " nnoremap <leader>pe :lua require('telescope.builtin').file_browser({cwd = vim.fn.expand("%:p:h")})<CR>

