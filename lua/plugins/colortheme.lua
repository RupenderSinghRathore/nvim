return {
  "folke/tokyonight.nvim",
  lazy = false, -- Load immediately
  priority = 1000, -- Load before other plugins
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = false, -- Default is not transparent
      terminal_colors = true,
    })
    vim.cmd.colorscheme("tokyonight")

    -- Function to toggle transparency
    local function toggle_transparency()
      local current_transparency = require("tokyonight.config").options.transparent
      require("tokyonight").setup({
        transparent = not current_transparency,
        style = "night",
      })
      vim.cmd.colorscheme("tokyonight") -- Reload colorscheme
    end

    -- Set keybinding to <leader>tt (change if you prefer another keybinding)
    vim.keymap.set("n", "<leader>tt", toggle_transparency, { noremap = true, silent = true })
  end,
}
