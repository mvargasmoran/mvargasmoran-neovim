" Swap tabs
map <silent><Leader>t< :execute "tabmove" tabpagenr() - 2 <CR>
map <silent><Leader>t> :execute "tabmove" tabpagenr() + 1 <CR>
