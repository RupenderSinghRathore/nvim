return {
  {
    "Exafunction/windsurf.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        virtual_text = {
          enabled = true, -- Enable virtual text for suggestions
        },
        key_bindings = {
          -- accept = "<Tab>", -- Accept the current suggestion with Ctrl+Space
          -- accept_word = "<C-g>", -- Accept the next word of the suggestion
          -- accept_line = "<C-wl>", -- Accept the next line of the suggestion
          -- clear = "<C-x>", -- Clear the current virtual text suggestion
          next = "<M-]>", -- Cycle to the next suggestion
          prev = "<M-[>", -- Cycle to the previous suggestion
        },
      })

      -- Define options for keybindings (optional, adjust as needed)
      local opts = { noremap = true, silent = true }
      -- Set custom keybinding to toggle Codeium
      vim.keymap.set("n", "<leader>c", "<cmd>Codeium Toggle<CR>", opts)

      vim.cmd("Codeium Toggle") -- Toggles off by default
    end,
  },
}
