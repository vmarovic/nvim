return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.1",
	requires = { { "nvim-lua/plenary.nvim" } },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<C-p>", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fc", builtin.commands, {})
		vim.keymap.set("n", "<leader>/", builtin.live_grep, {})
		vim.keymap.set("n", "<leader><Space>", builtin.buffers, {})
		vim.keymap.set("n", "<leader>]", builtin.lsp_workspace_symbols, {})
		vim.keymap.set("n", "<leader>[", builtin.lsp_document_symbols, {})
		vim.keymap.set("n", "<leader>ft", builtin.help_tags, {})
		vim.keymap.set("n", "<Escape>", "<Nop>")
	end,
}
