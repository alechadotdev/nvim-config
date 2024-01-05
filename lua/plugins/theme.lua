-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--         vim.cmd.colorscheme("catppuccin")
--     end,
-- }
return {
    "rose-pine/neovim",
    priority = 1000,
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            disable_background = true
        })
        vim.cmd("colorscheme rose-pine")
    end
}
