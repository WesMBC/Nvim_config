return{
    {
    --mason
    "mason-org/mason.nvim",
    opts = {},

    config = function()
        local config = require("mason")
        config.setup({})
    end 
    },

    --mason lspconfig
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        config = function()
            local config = require("mason-lspconfig")
            config.setup({
                ensure_installed = {"lua_ls","bashls","pyright",'harper_ls'}
            })
        end 

    },

}
