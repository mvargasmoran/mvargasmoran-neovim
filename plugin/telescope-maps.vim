lua require('telescope').setup({defaults = {file_sorter = require('telescope.sorters').get_fzy_sorter}})

nnoremap <C-p> :lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<cr>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string({ search = vim.fn.expand("<cword>")})<cr>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>ph :lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>pe :lua require('telescope.builtin').file_browser({cwd = vim.fn.expand("%:p:h")})<CR>

nnoremap <leader>pp :Telescope<cr>
"nnoremap <leader>pg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ") })<CR>
