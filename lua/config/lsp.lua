--configuracion

vim.diagnostic.config({
	virtual_lines = false,
	virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "❌",
			[vim.diagnostic.severity.WARN] = "⚠️",
			[vim.diagnostic.severity.INFO] = "‼️",
			[vim.diagnostic.severity.HINT] = "!?",
		},
		NUMHL = {
			[vim.diagnostic.severity.ERROR] = "MSjError",
			[vim.diagnostic.severity.ERROR] = "MSJAlerta",
		},
	},
})

-- autocompletacion
--vim.api.nvim_create_autocmd("LspAttach", {
--	callback = function(ev)
--		local client = vim.lsp.get_client_by_id(ev.data.client_id)
--		if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
--			vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup" }
	--		vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--			vim.keymap.set("i", "<C-Space>", function()
--				vim.lsp.completion.get()
--			end)
--		end
--	end,
--})

--keymaps personalizados
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
