return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    options = {
        icons_enabled = true,
        theme = "gruvbox",
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,
            },
        },
    },
    config = function()
        require('lualine').setup()
    end,
}
