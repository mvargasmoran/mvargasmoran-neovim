" My actual keymaps

nnoremap <silent> <leader>a :lua vim.lsp.buf.code_action()<cr>
vnoremap <silent> <leader>a :lua vim.lsp.buf.range_code_action()<cr>


" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>


" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)



""-- lsp provider to find the cursor word definition and reference
nnoremap <silent> gh <cmd>lua require('lspsaga.provider').lsp_finder()<CR>
""-- or use command LspSagaFinder
nnoremap <silent> gh :Lspsaga lsp_finder<CR>


""-- code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
""-- or use command
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>


""-- show hover doc
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
""-- or use command
nnoremap <silent>K :Lspsaga hover_doc<CR>

""-- scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
""-- scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>


""-- show signature help
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
""-- or command
nnoremap <silent> gs :Lspsaga signature_help<CR>


""-- rename
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
""-- or command
nnoremap <silent>gr :Lspsaga rename<CR>
""-- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`

""-- preview definition
nnoremap <silent> gd <cmd>lua require('lspsaga.provider').preview_definition()<CR>
""-- or use command
nnoremap <silent> gd :Lspsaga preview_definition<CR>


""-- show
nnoremap <silent><leader>cd <cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>

nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
""-- only show diagnostic if cursor is over the area
nnoremap <silent><leader>cc <cmd>lua require('lspsaga.diagnostic').show_cursor_diagnostics()<CR>

""-- jump diagnostic
nnoremap <silent> [e <cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> ]e <cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_next()<CR>
""-- or use command
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>


""-- float terminal also you can pass the cli command in open_float_terminal function
nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR> ""-- or open_float_terminal('lazygit')<CR>
tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
""-- or use command
nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>

"highlight link LspSagaFinderSelection Search
" or
"highlight link LspSagaFinderSelection guifg='#ff0000' guibg='#00ff00' gui='bold'o














