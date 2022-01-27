local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end
-- npm install -g vls
require'lspconfig'.vuels.setup{}

-- npm install -g vim-language-server
require'lspconfig'.vimls.setup{}

-- npm i -g bash-language-server
require'lspconfig'.yamlls.setup{
    on_attach=on_attach,
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    settings = {
        yaml = {
            schemas = {
                ["https://raw.githubusercontent.com/quantumblacklabs/kedro/develop/static/jsonschema/kedro-catalog-0.17.json"]= "conf/**/*catalog*",
                ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*"
            }
        }
    }
}

-- npm install -g emmet-ls
-- require'lspconfig'.emmet_ls.setup{
--   filetypes = { "html", "css", "jsx", "tsx" }
-- }

-- npm install -g ls_emmet
local lspconfig = require'lspconfig'
local configs = require'lspconfig.configs'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not configs.ls_emmet then
  configs.ls_emmet = {
    default_config = {
      cmd = { 'ls_emmet', '--stdio' };
      filetypes = {
        'html',
        'css',
        'scss',
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'haml',
        'xml',
        'xsl',
        'pug',
        'slim',
        'sass',
        'stylus',
        'less',
        'sss',
        'hbs',
        'handlebars',
      };
      root_dir = function(fname)
        return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end

lspconfig.ls_emmet.setup { capabilities = capabilities }

-- npm i -g yaml-language-server@latest
require'lspconfig'.yamlls.setup{}

-- npm i -g pyright
require'lspconfig'.pyright.setup{}

-- brew install hashicorp/tap/terraform-ls
require'lspconfig'.terraformls.setup{}

-- This one needed llvm in macos
require'lspconfig'.clangd.setup {
    root_dir = function() return vim.loop.cwd() end
}

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{}

-- npm install -g svelte-language-server
require'lspconfig'.svelte.setup{}


require'lspconfig'.texlab.setup{}

-- GO!
-- GO111MODULE=on go get golang.org/x/tools/gopls@latest
require'lspconfig'.gopls.setup{}

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
