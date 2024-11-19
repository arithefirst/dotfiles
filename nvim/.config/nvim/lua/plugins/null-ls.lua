return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, --Lua
				null_ls.builtins.formatting.prettier, --Angular, CSS, Flow, GraphQL, HTML, JS, JSON, JSX, Less, MD, SCSS, TS, Vue, YAML
				require("none-ls.diagnostics.eslint"), -- JS, TS
				require("none-ls.code_actions.eslint"), -- JS, TS
				null_ls.builtins.completion.spell,
			},
		})

		-- Add format keybind
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format" })
	end,
}
