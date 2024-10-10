return {
  'tpope/vim-fugitive',
  'tjdevries/sPoNGe-BoB.NvIm',
  'ThePrimeagen/vim-be-good',
  -- colors
  'Shatur/neovim-ayu',
  'mvargasmoran/shadows-die-twice-vim',
  'rebelot/kanagawa.nvim',
  'EdenEast/nightfox.nvim',
  'haishanh/night-owl.vim',
  'tiagovla/tokyodark.nvim',
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- HARPOON MAN!
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function ()
      vim.keymap.set('n', '<leader>sb', "<cmd>lua require('telescope').extensions.file_browser.file_browser()<CR>", { desc = '[F]ile [B]rowser' })
    end
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
      require("oil").setup()
    end
  }
}

  -- keymaps = {
  --   ["g?"] = "actions.show_help",
  --   ["<CR>"] = "actions.select",
  --   ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
  --   ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
  --   ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
  --   ["<C-p>"] = "actions.preview",
  --   ["<C-c>"] = "actions.close",
  --   ["<C-l>"] = "actions.refresh",
  --   ["-"] = "actions.parent",
  --   ["_"] = "actions.open_cwd",
  --   ["`"] = "actions.cd",
  --   ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
  --   ["gs"] = "actions.change_sort",
  --   ["gx"] = "actions.open_external",
  --   ["g."] = "actions.toggle_hidden",
  --   ["g\\"] = "actions.toggle_trash",
  -- },
