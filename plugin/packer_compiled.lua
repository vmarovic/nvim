-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n®\6\0\0\t\0#\0G6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0006\4\5\0009\4\6\0049\4\a\0049\4\b\4=\4\t\0035\4\f\0004\5\3\0006\6\0\0'\b\n\0B\6\2\0029\6\v\6>\6\1\5=\5\r\0044\5\3\0006\6\0\0'\b\14\0B\6\2\0029\6\v\6>\6\1\5=\5\15\0044\5\3\0006\6\0\0'\b\16\0B\6\2\0029\6\v\6>\6\1\5=\5\17\0044\5\3\0006\6\0\0'\b\18\0B\6\2\0029\6\v\6>\6\1\5=\5\19\0044\5\3\0006\6\0\0'\b\20\0B\6\2\0029\6\21\6>\6\1\5=\5\22\0044\5\3\0006\6\0\0'\b\23\0B\6\2\0029\6\24\6>\6\1\5=\5\25\4=\4\26\3B\1\2\0016\1\5\0009\1\27\1'\3\28\0B\1\2\0016\1\5\0009\1\29\0019\1\30\1'\3\31\0'\4 \0'\5!\0005\6\"\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\16:Format<CR>\14<Leader>f\6n\20nvim_set_keymap\bapia  augroup FormatAutogroup\n    autocmd!\n    autocmd BufWritePost * FormatWrite\n  augroup END\n\bcmd\rfiletype\6*\31remove_trailing_whitespace\28formatter.filetypes.any\blua\vstylua\28formatter.filetypes.lua\tjson\29formatter.filetypes.json\15javascript#formatter.filetypes.javascript\20typescriptreact(formatter.filetypes.typescriptreact\15typescript\1\0\0\rprettier#formatter.filetypes.typescript\14log_level\tWARN\vlevels\blog\bvim\1\0\1\flogging\2\nsetup\14formatter\19formatter.util\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint@\0\0\3\0\5\0\a6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\1\nasync\2\vformat\bbuf\blsp\bvimí\a\1\1\b\0&\0ì\0016\1\0\0009\1\1\0019\2\2\0008\1\2\1'\2\4\0=\2\3\0015\1\5\0009\2\2\0=\2\6\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\n\0006\6\0\0009\6\v\0069\6\2\0069\6\f\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\r\0006\6\0\0009\6\v\0069\6\2\0069\6\14\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\15\0006\6\0\0009\6\v\0069\6\2\0069\6\16\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\17\0006\6\0\0009\6\v\0069\6\2\0069\6\18\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\19\0006\6\0\0009\6\v\0069\6\2\0069\6\20\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\21\0006\6\0\0009\6\v\0069\6\2\0069\6\22\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\23\0006\6\0\0009\6\v\0069\6\2\0069\6\24\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\25\0003\6\26\0\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\27\0006\6\0\0009\6\v\0069\6\2\0069\6\28\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\29\0006\6\0\0009\6\v\0069\6\2\0069\6\30\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\0025\4\31\0'\5 \0006\6\0\0009\6\v\0069\6\2\0069\6!\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\"\0006\6\0\0009\6\v\0069\6\2\0069\6#\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5$\0003\6%\0\18\a\1\0B\2\5\1K\0\1\0\0\r<space>f\15references\agr\16code_action\14<space>ca\1\3\0\0\6n\6v\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\0\27v:lua.vim.lsp.omnifunc\romnifunc\bbuf\abo\bvim…\3\1\0\t\0\26\0;6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0006\5\4\0009\5\t\0059\5\n\5B\1\4\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\v\0006\5\4\0009\5\t\0059\5\f\5B\1\4\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\r\0006\5\4\0009\5\t\0059\5\14\5B\1\4\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\15\0006\5\4\0009\5\t\0059\5\16\5B\1\4\0016\1\4\0009\1\17\0019\1\18\1'\3\19\0005\4\22\0006\5\4\0009\5\17\0059\5\20\5'\a\21\0004\b\0\0B\5\3\2=\5\23\0043\5\24\0=\5\25\4B\1\3\1K\0\1\0\rcallback\0\ngroup\1\0\0\18UserLspConfig\24nvim_create_augroup\14LspAttach\24nvim_create_autocmd\bapi\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\nsetup\rtsserver\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n˚\1\0\0\6\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\n<C-n>\6n\20nvim_set_keymap\bapi\bvim\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nê\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\aÄ\15\0\4\0X\5\5Ä9\5\6\4\1\2\5\0X\5\2Ä+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcallÄ¿\f\1\1\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0003\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14highlight\fdisable\0\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17auto_install\2\17sync_install\2\1\5\0\0\blua\bvim\vvimdoc\15typescript\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nƒ\2\0\0\a\0\16\0,6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0009\5\t\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0009\5\v\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\14\0009\5\15\0004\6\0\0B\1\5\1K\0\1\0\14help_tags\15<leader>ft\fbuffers\15<leader>fb\14live_grep\15<leader>fg\rcommands\15<leader>fc\15find_files\n<C-p>\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nê\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\aÄ\15\0\4\0X\5\5Ä9\5\6\4\1\2\5\0X\5\2Ä+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcallÄ¿\f\1\1\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0003\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14highlight\fdisable\0\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17auto_install\2\17sync_install\2\1\5\0\0\blua\bvim\vvimdoc\15typescript\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n˚\1\0\0\6\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\n<C-n>\6n\20nvim_set_keymap\bapi\bvim\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n®\6\0\0\t\0#\0G6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0006\4\5\0009\4\6\0049\4\a\0049\4\b\4=\4\t\0035\4\f\0004\5\3\0006\6\0\0'\b\n\0B\6\2\0029\6\v\6>\6\1\5=\5\r\0044\5\3\0006\6\0\0'\b\14\0B\6\2\0029\6\v\6>\6\1\5=\5\15\0044\5\3\0006\6\0\0'\b\16\0B\6\2\0029\6\v\6>\6\1\5=\5\17\0044\5\3\0006\6\0\0'\b\18\0B\6\2\0029\6\v\6>\6\1\5=\5\19\0044\5\3\0006\6\0\0'\b\20\0B\6\2\0029\6\21\6>\6\1\5=\5\22\0044\5\3\0006\6\0\0'\b\23\0B\6\2\0029\6\24\6>\6\1\5=\5\25\4=\4\26\3B\1\2\0016\1\5\0009\1\27\1'\3\28\0B\1\2\0016\1\5\0009\1\29\0019\1\30\1'\3\31\0'\4 \0'\5!\0005\6\"\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\16:Format<CR>\14<Leader>f\6n\20nvim_set_keymap\bapia  augroup FormatAutogroup\n    autocmd!\n    autocmd BufWritePost * FormatWrite\n  augroup END\n\bcmd\rfiletype\6*\31remove_trailing_whitespace\28formatter.filetypes.any\blua\vstylua\28formatter.filetypes.lua\tjson\29formatter.filetypes.json\15javascript#formatter.filetypes.javascript\20typescriptreact(formatter.filetypes.typescriptreact\15typescript\1\0\0\rprettier#formatter.filetypes.typescript\14log_level\tWARN\vlevels\blog\bvim\1\0\1\flogging\2\nsetup\14formatter\19formatter.util\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nƒ\2\0\0\a\0\16\0,6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0009\5\t\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0009\5\v\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\14\0009\5\15\0004\6\0\0B\1\5\1K\0\1\0\14help_tags\15<leader>ft\fbuffers\15<leader>fb\14live_grep\15<leader>fg\rcommands\15<leader>fc\15find_files\n<C-p>\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint@\0\0\3\0\5\0\a6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\1\nasync\2\vformat\bbuf\blsp\bvimí\a\1\1\b\0&\0ì\0016\1\0\0009\1\1\0019\2\2\0008\1\2\1'\2\4\0=\2\3\0015\1\5\0009\2\2\0=\2\6\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\n\0006\6\0\0009\6\v\0069\6\2\0069\6\f\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\r\0006\6\0\0009\6\v\0069\6\2\0069\6\14\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\15\0006\6\0\0009\6\v\0069\6\2\0069\6\16\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\17\0006\6\0\0009\6\v\0069\6\2\0069\6\18\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\19\0006\6\0\0009\6\v\0069\6\2\0069\6\20\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\21\0006\6\0\0009\6\v\0069\6\2\0069\6\22\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\23\0006\6\0\0009\6\v\0069\6\2\0069\6\24\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\25\0003\6\26\0\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\27\0006\6\0\0009\6\v\0069\6\2\0069\6\28\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\29\0006\6\0\0009\6\v\0069\6\2\0069\6\30\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\0025\4\31\0'\5 \0006\6\0\0009\6\v\0069\6\2\0069\6!\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\"\0006\6\0\0009\6\v\0069\6\2\0069\6#\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5$\0003\6%\0\18\a\1\0B\2\5\1K\0\1\0\0\r<space>f\15references\agr\16code_action\14<space>ca\1\3\0\0\6n\6v\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\0\27v:lua.vim.lsp.omnifunc\romnifunc\bbuf\abo\bvim…\3\1\0\t\0\26\0;6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0006\5\4\0009\5\t\0059\5\n\5B\1\4\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\v\0006\5\4\0009\5\t\0059\5\f\5B\1\4\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\r\0006\5\4\0009\5\t\0059\5\14\5B\1\4\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\15\0006\5\4\0009\5\t\0059\5\16\5B\1\4\0016\1\4\0009\1\17\0019\1\18\1'\3\19\0005\4\22\0006\5\4\0009\5\17\0059\5\20\5'\a\21\0004\b\0\0B\5\3\2=\5\23\0043\5\24\0=\5\25\4B\1\3\1K\0\1\0\rcallback\0\ngroup\1\0\0\18UserLspConfig\24nvim_create_augroup\14LspAttach\24nvim_create_autocmd\bapi\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\nsetup\rtsserver\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
