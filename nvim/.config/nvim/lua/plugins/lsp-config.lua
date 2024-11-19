return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
	      ensure_installed = { "biome", "lua_ls", "svelte" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Keybinds
      vim.keymap.set('n', '<leader>ci', vim.lsp.buf.hover, {desc = "Hover Info"})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {desc = "Code Actions"})
      vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition, {desc = "Definition"})

      -- Language Servers
      lspconfig.biome.setup({})  -- JS, TS, JSX, TSX, JSON, JSONC, CSS, & GraphQL 
      lspconfig.lua_ls.setup({}) -- Lua
      lspconfig.svelte.setup({}) -- Svelte
    end
  },
}
