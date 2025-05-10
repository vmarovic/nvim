  return {
    "olimorris/codecompanion.nvim",
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function(_, opts)
      local codecompanion = require("codecompanion")

      vim.keymap.set("n", "<leader>a", function()
        codecompanion.toggle()
      end, { desc = "Toggle Code Companion" })

      codecompanion.setup({
        adapters = {
          openai = function()
            return require("codecompanion.adapters").extend("openai", {
              env = {
                api_key = os.getenv("OPENAI_KEY_NVIM"), -- Fetch the key from an environment variable
              },
            })
          end,
        },
      })
    end,
  }
