    lualine_c = {
        {
            'filename',
            color = {fg = '#ffffff'},
            file_status = true,
        },
        {
          'diagnostics',
          sources = {'nvim_lsp'},
          sections = {
              'error',
              'warn',
              'info',
          },
          symbols = {
              warn = ' ',
              error = ' ',
              info = ' ',
          },
          color_error = '#ff0000',
          color_warn = '#ffaa00',
          color_info = '#ffffff',
        },
    },
