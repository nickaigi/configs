return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        show_end_of_line = true,
        space_char_blankline = " ",
    }, 
    config = function(_, opts)
        vim.opt.list = true
        vim.opt.listchars:append "space:⋅"
        vim.opt.listchars:append "eol:↴"
        require("ibl").setup(opts)
    end,
}
