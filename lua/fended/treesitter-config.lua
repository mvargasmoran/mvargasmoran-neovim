require'nvim-treesitter.configs'.setup {
  highlight = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "tnn",
      node_incremental = "<Tab>",
      scope_incremental = "trc",
      node_decremental = "<S-Tab>",
    },
  },
}

