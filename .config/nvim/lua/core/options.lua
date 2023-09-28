local opt = vim.opt -- for conciseness

-- backspace
opt.backspace = '2'                         -- 2 same as ":set backspace=indent,eol,start"
opt.showcmd = true

-- line numbers
opt.nu = true                               -- set numbered lines
opt.relativenumber = true
opt.autoindent = true

-- search settings
opt.hlsearch = true                         -- highlight all matches on previous search pattern
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true                        -- Do not ignore case with capitals
opt.showmatch = true

-- split windows
opt.splitbelow = true
opt.splitright = true

-- tabs and indentation
opt.tabstop = 4                             -- insert 4 spaces instead of tab
opt.softtabstop = 4
opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
opt.shiftround = true
opt.expandtab = true


-- turn on termguicolors
opt.termguicolors = true

-- turn off swapfile
opt.swapfile = false

opt.laststatus = 2
opt.autowrite = true
opt.autoread = true

opt.iskeyword:append("-")                   -- treats words with `-` as single words

vim.g.python3_host_prog = '/usr/bin/python3'    -- python provider configuration
