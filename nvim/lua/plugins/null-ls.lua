return {
    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.code_actions.refactoring,
                    null_ls.builtins.code_actions.shellcheck,
                    null_ls.builtins.hover.dictionary,
                    null_ls.builtins.diagnostics.shellcheck,
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.diagnostics.eslint,
                    null_ls.builtins.completion.spell,
                    null_ls.builtins.formatting.shfmt.with({
                        extra_args = { "-i", "2", "-sr", "-s", "-ci" },
                    }),
                },
            })
        end,
        requires = { "nvim-lua/plenary.nvim" },
    }
}
