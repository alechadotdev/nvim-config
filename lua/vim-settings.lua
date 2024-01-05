vim.cmd("set rnu")
vim.cmd("set nu")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- save and close files with leader
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- disable search highlights
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
