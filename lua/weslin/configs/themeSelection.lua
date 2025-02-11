-- funcion para selecionar el tema automaticamente
function colorSelect(color)
  color = color or "monokai-pro-machine"
  vim.cmd.colorscheme(color)
end

 colorSelect()
