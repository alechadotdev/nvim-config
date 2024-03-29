return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,
				-- JS, TS
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
				-- Python
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.flake8,
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.diagnostics.mypy,
				-- Bash
				null_ls.builtins.formatting.shfmt,
				null_ls.builtins.diagnostics.shellcheck,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
