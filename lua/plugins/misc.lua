return {
  {
    -- Hints keybinds
    "folke/which-key.nvim",
  },
  {
    -- Autoclose parentheses, brackets, quotes, etc.
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    opts = {},
  },
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter", -- load LuaSnip when you start inserting text
    config = function()
      local ls = require("luasnip")

      -- (Optional) Set up LuaSnip's configuration.
      ls.config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
      })

      -- Add an HTML snippet that expands the "!" trigger to full HTML boilerplate.
      ls.add_snippets("html", {
        ls.parser.parse_snippet(
          "!",
          [[
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${1:Document}</title>
</head>
<body>
  $0
</body>
</html>
      ]]
        ),
      })
    end,
  },
}
