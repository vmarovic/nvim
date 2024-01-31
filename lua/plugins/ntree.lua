return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {"nvim-tree/nvim-web-devicons"},
	config = function()
		require("nvim-tree").setup({
			sort_by = "case_sensitive",
      view = {
        width = 60
      },
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})

		vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<Leader>ff", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
	end,
}
