return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				highlight = { enable = true },
				indent = { enable = true },
				auto_install = true,
				ensure_installed = { "go", "lua", "javascript", "typescript", "yaml", "json", "jsonc" },
			})
		end,
	},
	-- Treesitter Grammar for hyprland configs
	vim.filetype.add({
		pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
	}),
}
