
require("weslin.lazy")
require("weslin.configs")

-- configuracion de opciones --
vim.opt.number = true
vim.opt.splitkeep = 'screen'
vim.opt.shiftwidth = 2
vim.opt.numberwidth = 2
--vim.opt.wrap = true
vim.opt.showmode = false
vim.opt.syntax = 'enable'
--vim.opt.foldmethod = "indent"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.termguicolors = true
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

