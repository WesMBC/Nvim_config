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
