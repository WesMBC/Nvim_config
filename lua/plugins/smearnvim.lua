return {
	"sphamba/smear-cursor.nvim",
	opts = {},

  config = function ()
    local config = require("smear_cursor")
    config.setup({
      cursor_color = "#6C6C6C"
    })
  end
}
