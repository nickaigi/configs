return {
    'ellisonleao/gruvbox.nvim',
    priority = 1000, -- make sure to load this before all other plugins
    config = function()
        -- load the colorscheme here
        vim.cmd([[ colorscheme gruvbox ]])
    end,
} 
