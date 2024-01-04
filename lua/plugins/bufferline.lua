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
    keys = {
        { "<leader>bc", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
        { "<S-h>",      "<cmd>BufferLineCyclePrev<cr>",   desc = "Prev buffer" },
        { "<S-l>",      "<cmd>BufferLineCycleNext<cr>",   desc = "Next buffer" },
        { "[b",         "<cmd>BufferLineCyclePrev<cr>",   desc = "Prev buffer" },
        { "]b",         "<cmd>BufferLineCycleNext<cr>",   desc = "Next buffer" },
    }
}
