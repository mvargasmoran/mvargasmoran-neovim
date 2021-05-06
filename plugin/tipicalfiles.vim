"---------General Mappings----------------------------------------------------"
"Edit Vimrc File easily
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ez :tabedit ~/.zshrc<cr>

vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

