return {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    opts = function(_, opts)
        opts.options = {
            icons_enabled = true,
            theme = 'gruvbox-material',
        }
    end,
}
