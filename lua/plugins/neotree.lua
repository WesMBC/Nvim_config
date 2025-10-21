return{
        "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    config = function()
        --configuracion de un comando
        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal right<cr>',{})

        --configuracion general del plugin
        --se crea primero una variable con el llamado a la configuracion 
        local config = require("neo-tree")

        --se usa la variabla para setear algunos elementos 
        config.setup({
            window = {
                position = "right",
            }
        })

    end
    
}


