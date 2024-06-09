return {
    "akinsho/bufferline.nvim",
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            always_show_bufferline = true,
            show_close_icon = false,
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    highlight = "Directory",
                    text_align = "left",
                },
            },
        },
    },
    keys = {},
}
