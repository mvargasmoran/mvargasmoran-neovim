-- some niceties
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

-- vim.opt.nu = true
-- vim.opt.signcolumn = "yes"
-- vim.o.statuscolumn = '%s %l %r '
-- vim.o.statuscolumn = '%s %l %r'
vim.opt.relativenumber = true
vim.o.statuscolumn = '%s %{v:lnum}%T│%=%T%{v:relnum}%=│'

-- vim.o.statuscolumn = '%#NonText#%{&nu?v:lnum:""} %=%{&rnu&&(v:lnum%2)?" ".v:relnum:""} %#LineNr#%{&rnu&&!(v:lnum%2)?" ".v:relnum:""}'

-- let &stc='%#NonText#%{&nu?v:lnum:""}' .
-- vim.o.statuscolumn = '%=%{&rnu&&(v:lnum%2)?" ".v:relnum:""}'
-- vim.o.statuscolumn = '%#LineNr#%{&rnu&&!(v:lnum%2)?" ".v:relnum:""}'


-- vim.o.statuscolumn = '%#NonText#%{&nu?v:lnum:""}' .. '%=%{&rnu&&(v:lnum%2)?"".v:relnum:""}' .. '%#LineNr#%{&rnu&&!(v:lnum%2)?".".v:relnum:""}│%T'
-- vim.o.statuscolumn = '%#NonText#%{&nu?v:lnum:""}│%T' .. '%=%{&rnu&&(v:lnum)?"".v:relnum:""}│%T'
-- vim.o.statuscolumn = '%{v:lnum}%T│%T %{v:relnum}│%T'


-- vim.o.statuscolumn="%@SignCb@ %s %= %T%@NumCb@ %{v:lnum}│%T %{v:relnum}│%T"
-- vim.o.statuscolumn="%@SignCb@%s %=%T%@NumCb@%{v:lnum}│%T %l│%T"
-- vim.o.statuscolumn="%@SignCb@ %s %{v:lnum}%=│%T %l│%T"

-- " Line number with bar separator and click handlers:
-- vim.o.statuscolumn="%@SignCb@%s%=%T%@NumCb@%l│%T"

