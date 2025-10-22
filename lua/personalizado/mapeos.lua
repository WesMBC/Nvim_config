vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=4")

--Seteo de numero 
vim.opt.number = true 
vim.opt.relativenumber = true

--Establece el tema del editor 
vim.cmd("colorscheme bluloco-dark")      

--Elimina las lineas de relleno (filler lines)
vim.opt.fillchars = {eob = " "}

--comandos para partir el pane verticalmente y horizontalmente respectivamente
vim.keymap.set('n','<leader>s',':split<cr>',{})
vim.keymap.set('n','<leader>vs',':vsplit<cr>',{})

--comando para cerrar ventana sin el :q
vim.keymap.set('n','<leader>q',':q<cr>',{})


