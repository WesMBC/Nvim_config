return {
	"VonHeikemen/fine-cmdline.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },

	config = function()
		local config = require("fine-cmdline")
		config.setup({
      cmdline = {
        prompt = ":",
        smart_history = true,
        enable_keymaps = true;
      },
      border = {
        style = 'rounded'
      }

    })
		vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
	end,
}
