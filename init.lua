require 'core.options'
require 'core.keymaps'
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
{
"nvim-neo-tree/neo-tree.nvim",
branch = "v3.x",
dependencies = {
"nvim-lua/plenary.nvim",
"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
"MunifTanjim/nui.nvim",
-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
	}
},
{
  'folke/tokyonight.nvim',
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
})
