vim.pack.add { 'https://github.com/nvim-telescope/telescope-file-browser.nvim' }

require('telescope').load_extension 'file_browser'

vim.keymap.set('n', '<leader>sb', '<cmd>Telescope file_browser<CR>', { desc = '[F]ile [B]rowser' })
