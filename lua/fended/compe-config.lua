-- Setup nvim-cmp.
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      -- For `vsnip` user.
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

      -- For `luasnip` user.
      require('luasnip').lsp_expand(args.body)

      -- For `ultisnips` user.
      -- vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },

    -- For vsnip user.
    -- { name = 'vsnip' },

    -- For luasnip user.
    { name = 'luasnip' },

    -- For ultisnips user.
    -- { name = 'ultisnips' },

    { name = 'buffer' },
  }
})

require'cmp'.setup.cmdline('/', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp_document_symbol' }
  }, {
    { name = 'buffer' }
  })
})

cmp.setup({
  sources = {
    {
      name = 'path',
      option = {
        -- Options go into this table
      },
    },
  },
})

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
