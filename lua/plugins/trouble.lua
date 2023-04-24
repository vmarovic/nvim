return {
	"folke/trouble.nvim",
	requires = "nvim-tree/nvim-web-devicons",
	config = function()
		require("trouble").setup({
			icons = true,
			use_diagnostic_signs = true,
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		})
	end,
}
