return {
  'tpope/vim-abolish',
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
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'andrewferrier/debugprint.nvim',
    opts = {},
    dependencies = {
      'echasnovski/mini.nvim',
      'nvim-telescope/telescope.nvim',
    },
    lazy = false,
    version = '*',
  },
}
