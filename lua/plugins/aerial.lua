return {
	"stevearc/aerial.nvim",
	opts = {
		attach_mode = "global",
		backends = { "lsp", "treesitter", "markdown", "man" },
		show_guides = true,
		layout = {
			resize_to_content = false,
			win_opts = {
				winhl = "Normal:NormalFloat,FloatBorder:NormalFloat,SignColumn:SignColumnSB",
				signcolumn = "yes",
				statuscolumn = " ",
			},
		},
		guides = {
			mid_item = "├╴",
			last_item = "└╴",
			nested_top = "│ ",
			whitespace = "  ",
		},
	},
	keys = {
		{ "<leader>a", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
	},
}
