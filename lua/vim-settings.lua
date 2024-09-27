vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.wo.number = true
vim.o.expandtab = true
-- set tab width, to automatically detect with use "tpope/vim-sleuth"
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Enable mouse mode
vim.o.mouse = "a"

-- Save undo history
vim.o.undofile = true

-- Case-insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.completeopt = "menuone,noselect"

vim.o.termguicolors = true

-- highlight current line
vim.o.cursorline = true

-- save and close files with leader
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- disable search highlights
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear highlights" })

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format current buffer" })
vim.keymap.set("n", "<leader>E", ":Neotree toggle<CR>", { desc = "Toggle Neotree" })
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<cr>", { desc = "Aerial (Symbols)" })

vim.keymap.set("n", "<leader>bc", "<Cmd>BufferLineCloseOthers<CR>", { desc = "Delete other buffers" })
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show docs from LSP" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
vim.keymap.set(
    "n",
    "<leader>xx",
    "<cmd>TroubleToggle document_diagnostics<cr>",
    { desc = "Document Diagnostics (Trouble)" }
)
vim.keymap.set(
    "n",
    "<leader>xX",
    "<cmd>TroubleToggle workspace_diagnostics<cr>",
    { desc = "Workspace Diagnostics (Trouble)" }
)
-- Trouble
vim.keymap.set("n", "[q", function()
    if require("trouble").is_open() then
        require("trouble").previous({ skip_groups = true, jump = true })
    else
        local ok, err = pcall(vim.cmd.cprev)
        if not ok then
            vim.notify(err, vim.log.levels.ERROR)
        end
    end
end, { desc = "Previous trouble/quickfix item" })
vim.keymap.set("n", "]q", function()
    if require("trouble").is_open() then
        require("trouble").next({ skip_groups = true, jump = true })
    else
        local ok, err = pcall(vim.cmd.cnext)
        if not ok then
            vim.notify(err, vim.log.levels.ERROR)
        end
    end
end, {
    desc = "Next trouble/quickfix item",
})

-- Gitsigns
vim.keymap.set("n", "]H", "<cmd>Gitsigns nav_hunk last<CR>", { desc = "Last hunk" })
vim.keymap.set("n", "[h", "<cmd>Gitsigns nav_hunk first<CR>", { desc = "First hunk" })
vim.keymap.set({"n", "v"}, "<leader>ghs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })
vim.keymap.set({"n", "v"}, "<leader>ghr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })
vim.keymap.set("n", "<leader>ghp", "<cmd>Gitsigns preview_hunk_inline<CR>", { desc = "Show hunk preview" })
vim.keymap.set("n", "<leader>ghb", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle current line blame" })
vim.keymap.set("n", "<leader>ghB", "<cmd>Gitsigns blame<CR>", { desc = "Toggle current buffer blame" })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})
