-- Load lazy.nvim
require("config.lazy")

-- Make catppuccin default colorscheme
vim.cmd.colorscheme "catppuccin-mocha"

-- Map <leader> to space
vim.g.mapleader = " "

-- Set tabwidth to 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Treesitter
local configs = require("nvim-treesitter.configs")

configs.setup({
  highlight = { enable = true },
  indent = { enable = true },
  ensure_installed = { "go", "lua", "javascript", "typescript", "yaml", "json", "jsonc" },
})

local golang = require("go")

golang.setup({
  event = { "CmdlineEnter" },
  ft = { "go", "gomod" },
  build = ':lua require("go.install").update_all_sync()'
})
