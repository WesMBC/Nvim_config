return {
	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function() end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local config = require("cyberdream")
			config.setup({
				transparent = false,
				italic_commets = true,
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		config = true,
		opts = {},
	},
	{
		"wtfox/jellybeans.nvim",
		lazy = false,
		opts = {}, -- Optional
	},
}
