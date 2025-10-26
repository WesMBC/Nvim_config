vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--Seteo de numero
vim.opt.number = true
vim.opt.relativenumber = true

--Establece el tema del editor
vim.cmd("colorscheme bluloco-dark")

--Elimina las lineas de relleno (filler lines)
vim.opt.fillchars = { eob = " " }

--comandos para partir el pane verticalmente y horizontalmente respectivamente
vim.keymap.set("n", "<leader>s", ":split<cr>", {})
vim.keymap.set("n", "<leader>vs", ":vsplit<cr>", {})

--Comando para cerrar ventana sin el :q
vim.keymap.set("n", "<leader>q", ":q<cr>", {})

--llamado de comando para split de neotree (No funcional al inicio)
--vim.cmd("NeoTreeDual")
vim.keymap.set("n", "<leader>n", ":Neotree <CR>", { desc = "Abrir archivos" })
vim.keymap.set("n", "<leader>ne", ":Neotree source=git_status <CR>", { desc = "Abrir Git status" })

