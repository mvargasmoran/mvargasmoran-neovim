-- Diagnostic keymaps
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

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

-- Harpoon stuff
-- vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file, { desc = '[H]arpoon [A]dd Mark' })
-- vim.keymap.set('n', '<leader>ht', require('harpoon.ui').toggle_quick_menu, { desc = '[H]arpoon [T]oggle Menu' })
-- vim.keymap.set('n', '<C-h>', require('harpoon.ui').nav_file(1), { desc = '[H]arpoon [h]jkl nav' })
-- vim.keymap.set('n', '<C-j>', require('harpoon.ui').nav_file(2), { desc = '[H]arpoon h[j]kl nav' })
-- vim.keymap.set('n', '<C-k>', require('harpoon.ui').nav_file(3), { desc = '[H]arpoon hj[k]l nav' })
-- vim.keymap.set('n', '<C-l>', require('harpoon.ui').nav_file(4), { desc = '[H]arpoon hjk[l] nav' })

-- vim.keymap.set('n', '<C-h>', function() require('harpoon.ui').nav_file(1) end, { desc = '[H]arpoon [h]jkl nav' })
-- vim.keymap.set('n', '<C-j>', function() require('harpoon.ui').nav_file(2) end, { desc = '[H]arpoon h[j]kl nav' })
-- vim.keymap.set('n', '<C-k>', function() require('harpoon.ui').nav_file(3) end, { desc = '[H]arpoon hj[k]l nav' })
-- vim.keymap.set('n', '<C-l>', function() require('harpoon.ui').nav_file(4) end, { desc = '[H]arpoon hjk[l] nav' })
