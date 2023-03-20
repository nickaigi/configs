vim.opt.backspace = '2'                         -- 2 same as ":set backspace=indent,eol,start"
vim.opt.showcmd = true
vim.opt.incsearch = true
vim.opt.nu = true                               -- set numbered lines
vim.opt.relativenumber = true
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.autoindent = true
vim.opt.showmatch = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.smartcase = true                        -- Do not ignore case with capitals
vim.opt.tabstop = 4                             -- insert 4 spaces instead of tab
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.iskeyword:append("-")                   -- treats words with `-` as single words
vim.g.python3_host_prog = '/usr/bin/python3'    -- python provider configuration
