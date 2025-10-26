return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local config = require("cyberdream")
        config.setup({
            transparent = false,
            italic_commets = true
        })
    end

}
