-- Local dev plugin: linked straight from its repo so edits take effect on
-- restart. (`vim.pack.add` would clone a copy instead of linking.)
local path = vim.fn.expand '~/Code/nvim-plugins/collector.nvim'
if vim.uv.fs_stat(path) then
  vim.opt.rtp:append(path)
end
