-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use(require("plugins.ntree"))
	use(require("plugins.treesitter"))
	use(require("plugins.formatter"))
	--use(require("plugins.lspconfig"))
	use(require("plugins.telescope"))
	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})
	use(require("plugins/lsp"))
	use(require("plugins/trouble"))
	use({ "tpope/vim-fugitive" })
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})
	use(require("plugins.lualine"))
	use(require("plugins.nvim-comment"))
end)

vim.api.nvim_set_keymap("n", "<Leader>ps", ":PackerSync<CR>", { noremap = true, silent = true })
