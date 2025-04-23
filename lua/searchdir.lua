-- from Jamestre
-- :Telescope live_grep cwd=./years/2024
-- from AlphaKeks

local oil = require('oil')

vim.keymap.set('n', '<leader>sdir', function()
  -- by default assume we're searching the current directory
  local search_dir = oil.get_current_dir()

  -- if the cursor is on a directory, search that instead
  local current_entry = oil.get_cursor_entry()
  if current_entry and current_entry.type == 'directory' then
    search_dir = vim.fs.joinpath(search_dir, current_entry.name)
  else
    print("Not an Oil directory, just doing live_grep")
  end

  require('telescope.builtin').live_grep({ cwd = search_dir })
end)
