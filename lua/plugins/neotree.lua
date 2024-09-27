return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            filesystem = {
                filtered_items = {
                    hide_dotfiles = true,
                },
            },
            window = {
                position = "left",
            },
            sources = {
                "filesystem",
                "buffers",
                "git_status",
            },
            source_selector = {
                winbar = false,
                sources = {
                    { source = "filesystem" },
                    { source = "document_symbols" },
                    { source = "git_status" },
                },
            },
        })
    end,
}
