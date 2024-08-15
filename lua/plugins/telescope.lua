return {
	"nvim-telescope/telescope.nvim",
	dependencies = { { "nvim-lua/plenary.nvim" } },
	config = function()
		local builtin = require("telescope.builtin")

    require('telescope').setup({
      defaults = {
        layout_strategy = 'vertical',
      },
    })

		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>fc", builtin.commands, {})
		vim.keymap.set("n", "<leader>/", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>]", builtin.lsp_workspace_symbols, {})
		vim.keymap.set("n", "<leader>[", builtin.lsp_document_symbols, {})
		vim.keymap.set("n", "<leader>ft", builtin.help_tags, {})
		vim.keymap.set("n", "<Escape>", "<Nop>")
	end,
}
