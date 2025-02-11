return {
  "williamboman/mason.nvim",
  dependencies={
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
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
      -- list of servers for mason to install
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
      },
      automatic_installation = true,
    })

  end,
}
































































