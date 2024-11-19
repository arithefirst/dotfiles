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
      vim.keymap.set('n', '<leader>i', vim.lsp.buf.hover, {})
      lspconfig.biome.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.svelte.setup({})
    end
  },
}
