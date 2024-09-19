return {
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function() 
            local lspconfig = require("lspconfig")
            lspconfig.pylsp.setup({})
            lspconfig.gopls.setup({})
            lspconfig.marksman.setup({})
            lspconfig.clangd.setup({
                name = "clangd",
                cmd = {"clangd-16", "--background-index"},
            })
        end,
    }
}
