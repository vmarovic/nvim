vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local function find_json_config_ts()
    local function has_file(path, file)
        local f = io.open(path .. '/' .. file, "r")
        if f ~= nil then io.close(f) return true else return false end
    end

    local function find_in_parent_dirs(dir, file)
        local parent = dir
        while parent and parent ~= "" do
            if has_file(parent, file) then
                return parent .. '/' .. file
            end
            parent = vim.fn.fnamemodify(parent, ':h')
            if parent == dir then break end
            dir = parent
        end
        return ''
    end

    local current_dir = vim.fn.expand('%:p:h')
    local found_file = find_in_parent_dirs(current_dir, 'jest.config.ts')

    return found_file
end

require("lazy").setup({
  require("plugins.ntree"),
  require("plugins.treesitter"),
  require("plugins.formatter"),
  require("plugins.telescope"),
  require("plugins/lsp"),
  require("plugins/trouble"),
  { "tpope/vim-fugitive" },
  { "tpope/vim-surround" },
  { "fxn/vim-monochrome", as = "monochrome" },
  { "sjl/badwolf", as = "badwolf",},
  { "rose-pine/neovim", as = "rose-pine", },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000,  config = function() vim.cmd("colorscheme rose-pine") end, },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
  require("plugins.lualine"),
  -- require("plugins.nvim-comment"),
  require("plugins.harpoon"),
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.keymap.set("n", "<leader>md", function() vim.cmd("MarkdownPreviewToggle") end)
    end,
    ft = { "markdown" },
  },
  {
    "cseickel/diagnostic-window.nvim",
    requires = { "MunifTanjim/nui.nvim" },
  },
  -- {
  --   "David-Kunz/jester",
    -- config = function ()
    --   local jester = require("jester")
      -- vim.keymap.set("n", "<leader>t", function()
      --   local file_path = find_json_config_ts()
  --       jester.setup({
  --         terminal_cmd = ":split | terminal",
  --         cmd = "node 'node_modules/.bin/jest' -t '$result' -c" .. file_path .. " -- $file"
  --       })
  --       jester.run()
  --     end)
  --     vim.keymap.set("n", "<leader>tw", function()
  --       local file_path = find_json_config_ts()
  --       jester.setup({
  --         terminal_cmd = ":split | terminal",
  --         cmd = "tmux split-window -h && tmux select-pane -t 1 && tmux send-keys 'node \"node_modules/.bin/jest\" -t \"$result\" --watch -c" .. file_path .. " -- $file' C-m"
  --       })
  --       jester.run()
  --     end)
  --   end
  -- },
--  {
 --   "github/copilot.vim"
 -- },
  {
    "kndndrj/nvim-dbee",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install("go")
    end,
    config = function()
      require("dbee").setup({
        sources = {
          require("dbee/sources").MemorySource:new({
            name = "test",
            type = "mysql",
            url= "mysql://atheneum:atheneum@127.0.0.1:3306/legacy_platform",
          }),
        }
      })
    end,
  },
  {
    "rest-nvim/rest.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      opts = function (_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        table.insert(opts.ensure_installed, "http")
      end,
    }
  },
  require("plugins.code-companion"),
	--  {
	--   "nvim-neorg/neorg",
	--   lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	--   version = "*", -- Pin Neorg to the latest stable release
	--   config = function()
	-- 	require('neorg').setup {
	-- 	  load = {
	-- 		['core.defaults'] = {},
	-- 		['core.concealer'] = {},
	-- 		['core.dirman'] = {},
	-- 	  },
	-- 	}
	-- end,
	--  },
  require("plugins.obsidian")
}, opts)
