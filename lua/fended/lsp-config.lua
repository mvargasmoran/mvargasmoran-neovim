local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end
-- npm install -g vls
-- require'lspconfig'.vuels.setup{}

-- npm install -g vim-language-server
require'lspconfig'.vimls.setup{}

-- npm i -g bash-language-server
require'lspconfig'.bashls.setup{}


-- npm i -g pyright
require'lspconfig'.pyright.setup{}


-- This one needed llvm in macos
require'lspconfig'.clangd.setup {
    on_attach = on_attach,
    root_dir = function() return vim.loop.cwd() end
}

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{}
require'lspconfig'.svelte.setup{}
require'lspconfig'.texlab.setup{}

-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
-- /Users/marcos/Code/sumneko/lua-language-server
-- ./bin/macOS/lua-language-server -E ./main.lua

local sumneko_root_path = '/Users/marcos/Code/sumneko/lua-language-server'
local sumneko_binary = sumneko_root_path .. "/bin/macOS/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  --    on_attach = on_attach,
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
          -- Setup your lua path
          path = vim.split(package.path, ';'),
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = {
            -- vim
            'vim',
            -- Busted
            "describe", "it", "before_each", "after_each", "teardown", "pending", "clear"
          },
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = {
            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
          },
        },
      },
    },
  }
