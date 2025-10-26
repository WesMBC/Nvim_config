return {
	"vyfor/cord.nvim",
	build = ":Cord update",
	-- opts = {}
  
  config = function ()
    local config = require("cord")
    config.setup({
      editor = {
        tooltip = "NVIM Editor"
      },
      display = {
        theme = "default",
        flavor = "dark",
        view = "full",
      },
      timestamps = {
        enable = true,
        reset_on_idle = false,
        reset_on_change = false,
        shared = false,
      },

    })
    
  end
}
