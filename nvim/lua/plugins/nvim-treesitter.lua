return {
    {
        "nvim-treesitter/nvim-treesitter",
        checker = { enabled = true },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "cpp", "c", "lua", "vim", "vimdoc", "query", "python", "go" },

                auto_install = true,

                highlight = {
                    enable = true,
                },
            })
        end
    }
}
