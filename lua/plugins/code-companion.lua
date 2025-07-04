return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function(_, opts)
    local codecompanion = require("codecompanion")

    vim.keymap.set("n", "<leader>a", function()
      codecompanion.toggle()
    end, { desc = "Toggle Code Companion" })


    require("codecompanion").setup({
	  provider = "gemini",
      adapters = {
        openai = function()
          return require("codecompanion.adapters").extend("openai", {
            env = {
              api_key = os.getenv("OPENAI_KEY_NVIM"), -- Fetch the key from an environment variable
            },
          })
        end,
		gemini = function()
          return require("codecompanion.adapters").extend("gemini", {
            env = {
              api_key = os.getenv("GEMINI_API"), -- Fetch the key from an environment variable
            },
          })
		end,
      },
	  strategies = {
		chat = {
		  adapter = "gemini",
		},
		inline = {
		  adapter = "gemini",
		},
		cmd = {
		  adapter = "gemini",
		}
	  },
      display = {
        chat = {
          window = {
            position = "right", -- Open the chat window on the right side
          },
        },
      },
    })

  end,
}
