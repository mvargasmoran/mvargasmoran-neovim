local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }


local lspkind = require('lspkind')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (entry, vim_item)
        return vim_item
      end
    })
  }
}






-- -- Setup nvim-cmp.
-- local cmp = require'cmp'
-- cmp.setup({
--   snippet = {
--     expand = function(args)
--       -- For `vsnip` user.
--       -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

--       -- For `luasnip` user.
--       require('luasnip').lsp_expand(args.body)

--       -- For `ultisnips` user.
--       -- vim.fn["UltiSnips#Anon"](args.body)
--     end,
--   },
--   mapping = {
--     ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-f>'] = cmp.mapping.scroll_docs(4),
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.close(),
--     ['<CR>'] = cmp.mapping.confirm({ select = true }),
--   },
--   sources = {
--     { name = 'nvim_lsp' },

--     -- For vsnip user.
--     -- { name = 'vsnip' },

--     -- For luasnip user.
--     { name = 'luasnip' },

--     -- For ultisnips user.
--     -- { name = 'ultisnips' },

--     { name = 'buffer' },
--   }
-- })

-- require'cmp'.setup.cmdline('/', {
--   sources = cmp.config.sources({
--     { name = 'nvim_lsp_document_symbol' }
--   }, {
--     { name = 'buffer' }
--   })
-- })

-- cmp.setup({
--   sources = {
--     {
--       name = 'path',
--       option = {
--         -- Options go into this table
--       },
--     },
--   },
-- })









-- -- Setup lspconfig.
-- require('lspconfig')[%YOUR_LSP_SERVER%].setup {
--   capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- }


-- This Worked but the repo has a deprecated message gonna keep this for a while
--   https://github.com/hrsh7th/nvim-compe
--
--   vim.o.completeopt = "menuone,noselect"
--
--   require'compe'.setup {
--     enabled = true;
--     autocomplete = true;
--     debug = false;
--     min_length = 1;
--     preselect = 'enable';
--     throttle_time = 80;
--     source_timeout = 200;
--     incomplete_delay = 400;
--     max_abbr_width = 100;
--     max_kind_width = 100;
--     max_menu_width = 100;
--     documentation = false;
--
--     source = {
--       path = true;
--       buffer = true;
--       calc = true;
--       vsnip = true;
--       nvim_lsp = true;
--       nvim_lua = true;
--       spell = true;
--       tags = true;
--       snippets_nvim = true;
--       treesitter = true;
--     };
--   }
--
--   local t = function(str)
--     return vim.api.nvim_replace_termcodes(str, true, true, true)
--   end
--   _G.s_tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--       return t "<C-p>"
--     elseif vim.fn.call("vsnip#jumpble", {-1}) == 1 then
--       return t "<Plug>(vsnip-jump-prev)"
--     else
--       return t "<S-Tab>"
--     end
--   end
--
--   vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
--   vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
--   vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
--
