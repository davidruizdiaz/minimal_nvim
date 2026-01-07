require("config.lazy")

-- Configuración básica
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd('syntax on')

-- Cargar keymaps
vim.defer_fn(function()
  require("config.keymaps")
end, 0)

