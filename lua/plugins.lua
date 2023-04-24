-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({ "dracula/vim" })

	use({
		"nvim-tree/nvim-tree.lua",
		require = "nvim-tree/nvim-web-devicons",
		config = function()
			require("plugins.ntree")
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("plugins.treesitter-config")
		end,
	})

	use({
		"mhartington/formatter.nvim",
		config = function()
			require("plugins.formatter-config")
		end,
	})

	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.lspconfig")
		end,
	})
end)

vim.api.nvim_set_keymap("n", "<Leader>ps", ":PackerSync<CR>", { noremap = true, silent = true })
