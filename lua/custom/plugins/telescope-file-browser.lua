return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      vim.keymap.set('n', '<leader>sb', "<cmd>lua require('telescope').extensions.file_browser.file_browser()<CR>", { desc = '[F]ile [B]rowser' })
    end,
  },
}
