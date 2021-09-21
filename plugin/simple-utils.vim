" fun! TrimWhitepsace()
"     let l:save = winsaveview()
"     keeppatterns %s/\s\+$//e
"     call winrestview(l:save)
" endfun

" augroup THE_PRIMEAGEN
"     autocmd!
"     autocmd BufWritePre * :call TrimWhitepsace()
" augroup END
