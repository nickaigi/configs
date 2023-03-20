vim.opt.backspace = '2'  -- 2 same as ":set backspace=indent,eol,start"
vim.opt.showcmd = true
vim.opt.incsearch = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
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
-- Do not ignore case with capitals
vim.opt.smartcase = true
-- use spaces for tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
-- vim.opt.cursorline = true

-- Mappings to traverse buffer list 
vim.keymap.set('n', '[b', ':bprevious<CR>', { silent = true })
vim.keymap.set('n', ']b', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '[B', ':bfirst<CR>', { silent = true })
vim.keymap.set('n', ']B', ':blast<CR>', { silent = true })

-- Easy expansion of the active file directory
vim.keymap.set('c', '%%', function()
    return vim.fn.getcmdtype() == ':' and  vim.fn.expand('%:h') .. '/' or '%%'
end, { expr = true })

-- python provider configuration
vim.g.python3_host_prog = '/usr/bin/python3'
