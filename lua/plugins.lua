-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'dracula/vim'}

  use {'nvim-tree/nvim-tree.lua', require = 'nvim-tree/nvim-web-devicons'}

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  use {'mhartington/formatter.nvim'}

  use {'neovim/nvim-lspconfig', config = function() require'plugins.lspconfig' end}
end)

require('plugins.ntree')
require('plugins.treesitter-config')
require('plugins.formatter-config')

vim.api.nvim_set_keymap('n', '<Leader>ps', ':PackerSync<CR>', { noremap = true, silent = true })
