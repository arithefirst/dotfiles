-- Load lazy.nvim
require("config.lazy")

-- Map <leader> to space
vim.g.mapleader = " "

-- Enable line numbers
vim.cmd("set number")

-- Set tabwidth to 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
