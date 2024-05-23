return {
  'tjdevries/sPoNGe-BoB.NvIm',
  'ThePrimeagen/vim-be-good',
  -- colors
  'Shatur/neovim-ayu',
  'mvargasmoran/shadows-die-twice-vim',
  'rebelot/kanagawa.nvim',
  'EdenEast/nightfox.nvim',
  'haishanh/night-owl.vim',
  'tiagovla/tokyodark.nvim',

  -- HARPOON MAN!
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
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
