-- Mappings to traverse buffer list 
vim.keymap.set('n', '[b', ':bprevious<CR>', { silent = true })
vim.keymap.set('n', ']b', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '[B', ':bfirst<CR>', { silent = true })
vim.keymap.set('n', ']B', ':blast<CR>', { silent = true })

-- Easy expansion of the active file directory
vim.keymap.set('c', '%%', function()
    return vim.fn.getcmdtype() == ':' and  vim.fn.expand('%:h') .. '/' or '%%'
end, { expr = true })
