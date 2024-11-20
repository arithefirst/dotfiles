-- Load lazy.nvim
require("config.lazy")

-- Make catppuccin default colorscheme
vim.cmd.colorscheme("catppuccin-mocha")
vim.opt.termguicolors = true

-- Map <leader> to space
vim.g.mapleader = " "

-- Set tabwidth to 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
