return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        exclude = { filetypes = {"dashboard"}},
    },
    config = function(_, opts)
        vim.opt.list = true
        vim.opt.listchars:append "space:⋅"
        vim.opt.listchars:append "eol:↴"
        require("ibl").setup(opts)
    end,
}
