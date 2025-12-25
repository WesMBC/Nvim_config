return{
    {        "nvim-treesitter/nvim-treesitter",
        tag = "v0.10.0",
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter")
            config.setup({
                auto_install=true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    }

}
