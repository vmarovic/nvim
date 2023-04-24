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
	use(require("plugins/trouble"))
	use(require("plugins/lsp"))
end)

vim.api.nvim_set_keymap("n", "<Leader>ps", ":PackerSync<CR>", { noremap = true, silent = true })
