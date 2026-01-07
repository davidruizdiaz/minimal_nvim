require("config.lazy")

-- Configuración básica
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd('syntax on')
vim.opt.clipboard = "unnamedplus"
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = false
vim.opt.swapfile = true
vim.opt.directory = os.getenv("HOME") .. "/.local/state/nvim/swap//"

-- Cargar keymaps
vim.defer_fn(function()
  require("config.keymaps")
end, 0)

-- Crear directorio para swap si no existe
local swap_dir = vim.fn.stdpath("state") .. "/swap"
if vim.fn.isdirectory(swap_dir) == 0 then
  vim.fn.mkdir(swap_dir, "p", 0700)
end
