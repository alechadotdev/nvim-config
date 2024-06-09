return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Spell check
                null_ls.builtins.completion.spell,
                -- Lua
                null_ls.builtins.formatting.stylua,
                -- JS, TS
                null_ls.builtins.formatting.prettier,
                require("none-ls.diagnostics.eslint_d"),
                -- Python
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.pylint,
                require("none-ls.diagnostics.flake8"),
                null_ls.builtins.diagnostics.mypy,
                -- Bash
                null_ls.builtins.formatting.shfmt,
                null_ls.builtins.diagnostics.shellcheck,
            },
        })
    end,
}
