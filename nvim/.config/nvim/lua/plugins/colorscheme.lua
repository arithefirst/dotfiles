return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = false,
        color_overrides = {
          all = {
            -- Technically 1 bit off the normal
            -- base color, bc Ghostty makes the
            -- bg transparent if it's the same
            base = "#1E1E2F",
          },
        },
      })

      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
