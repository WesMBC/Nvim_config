return {
  "williamboman/mason.nvim",
  dependencies={
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")
    -- enable mason and configure icons
    mason.setup({
      ui = {
	border = "rounded",
	
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({
      ensure_installed = {"eslint","lua_ls","pyright"},
      automatic_installation = true
    })

  end,
}
































































