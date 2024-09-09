-- return {
-- 	"folke/trouble.nvim",
-- 	requires = "nvim-tree/nvim-web-devicons",
-- 	config = function()
-- 		require("trouble").setup({
-- 			icons = true,
-- 			use_diagnostic_signs = true,
-- 			-- your configuration comes here
-- 			-- or leave it empty to use the default settings
-- 			-- refer to the configuration section below
-- 		})
-- 	end,
-- }
return {
  "folke/trouble.nvim",
  opts = {
    focus = true,
    win = {
      border = true,
      position = "bottom",
    },
  }, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "ge",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "ge",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "gr",
      "<cmd>Trouble lsp toggle<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
