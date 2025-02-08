return {
  "folke/tokyonight.nvim",
  lazy = false, --  Load immediately (recommended for colorschemes)
  priority = 1000, --  Load before other plugins (recommended for colorschemes)
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = false,
      terminal_colors = true,
    })
    vim.cmd.colorscheme("tokyonight")
  end,
}
