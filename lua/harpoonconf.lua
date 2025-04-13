local harpoon = require 'harpoon'

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = '[H]arpoon [a]dd to roster'})
vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set('n', '<leader>h', function() harpoon:list():select(1) end, { desc = '[H]arpoon [h]jkl nav' })
vim.keymap.set('n', '<leader>j', function() harpoon:list():select(2) end, { desc = '[H]arpoon h[j]kl nav' })
vim.keymap.set('n', '<leader>k', function() harpoon:list():select(3) end, { desc = '[H]arpoon hj[k]l nav' })
vim.keymap.set('n', '<leader>l', function() harpoon:list():select(4) end, { desc = '[H]arpoon hjk[l] nav' })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<C-S-P>', function() harpoon:list():prev() end, { desc = '[H]arpoon [P]rev'})
vim.keymap.set('n', '<C-S-N>', function() harpoon:list():next() end, { desc = '[H]arpoon [N]ext'})

