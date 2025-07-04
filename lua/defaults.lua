-- Set tab size and use spaces for tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = false
vim.opt.wrap = false
vim.opt.conceallevel = 0 -- Default to 0 for all file types

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("MarkdownConceal", { clear = true }),
  callback = function()
    if vim.bo.filetype == "markdown" then
      vim.opt_local.conceallevel = 2
    else
      vim.opt_local.conceallevel = 0
    end
  end,
})

vim.opt.signcolumn = "yes" -- Always show gutter

vim.api.nvim_set_option("clipboard", "unnamedplus") -- Use system clipboard

-- Trun off swapfile
vim.opt.swapfile = false
vim.opt.backup = false

-- Preserve on quit
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.colorcolumn = "80"

vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- vim.opt.global = true -- Set options globally for new buffers
-- vim.opt.background = "dark"
vim.opt.nu = true
vim.opt.rnu = false
vim.opt.cursorline = true

vim.opt.spell = true
vim.opt.spelloptions = "camel"
