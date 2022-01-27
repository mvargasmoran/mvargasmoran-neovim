-- require('telescope').setup{
--   defaults = {
--     prompt_prefix = "$"
-- }
require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser",
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
