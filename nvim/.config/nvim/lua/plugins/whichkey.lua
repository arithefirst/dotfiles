return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>f", desc = "Telescope" },
			{ "<leader>c", desc = "LSP" },
			{ "<leader>g", desc = "Git" },
		})
		wk.setup({ preset = "modern" })
	end,
}
