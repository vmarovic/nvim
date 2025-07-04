vim.keymap.set("n", "<leader>op", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Obsidian Quick Switch" })
vim.keymap.set("n", "<leader>o/", "<cmd>ObsidianSearch<CR>", { desc = "Obsidian Search" })
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianToday<CR>", { desc = "Obsidian Today" })
vim.keymap.set("n", "<leader>od", "<cmd>ObsidianDailies<CR>", { desc = "Obsidian Dailies" })
return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
--  lazy = true,
--  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "knb",
		path = "/Users/vladimir/Library/CloudStorage/GoogleDrive-vmarovic1@gmail.com/My Drive/Obsidian/KNB",
      },
	},
	daily_notes = {
	  -- Optional, if you keep daily notes in a separate directory.
	  folder = "dailies",
	  -- Optional, if you want to change the date format for the ID of daily notes.
	  date_format = "%Y-%m-%d",
	  -- Optional, default tags to add to each new daily note created.
	  default_tags = { "daily-notes" },
	},

	-- see below for full list of options 👇
	note_id_func = function(title)
	  -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
	  -- In this case a note with the title 'My new note' will be given an ID that looks
	  -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
	  local suffix = ""
	  if title ~= nil then
		-- If title is given, transform it into valid file name.
		suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
	  else
		-- If title is nil, just add 4 random uppercase letters to the suffix.
		for _ = 1, 4 do
		  suffix = suffix .. string.char(math.random(65, 90))
		end
	  end
	  return tostring(os.date("%Y-%m-%d",os.time())) .. "-" .. suffix
	end,

	checkboxes = {
	  -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
	  [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
	  ["x"] = { char = "", hl_group = "ObsidianDone" },
	},
	mappings = {
	  -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
	  ["gf"] = {
		action = function()
		  return require("obsidian").util.gf_passthrough()
		end,
		opts = { noremap = false, expr = true, buffer = true },
	  },
	  -- Toggle check-boxes.
	  ["<leader>ch"] = {
		action = function()
		  return require("obsidian").util.toggle_checkbox()
		end,
		opts = { buffer = true },
	  },
	  -- Smart action depending on context, either follow link or toggle checkbox.
	  ["<cr>"] = {
		action = function()
		  return require("obsidian").util.smart_action()
		end,
		opts = { buffer = true, expr = true },
	  }
	},
  },
}
