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
  LuaSnip = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["diagnostic-window.nvim"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/diagnostic-window.nvim",
    url = "https://github.com/cseickel/diagnostic-window.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n˙\5\0\0\t\0\31\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\a\0004\5\3\0006\6\0\0'\b\5\0B\6\2\0029\6\6\6>\6\1\5=\5\b\0044\5\3\0006\6\0\0'\b\t\0B\6\2\0029\6\6\6>\6\1\5=\5\n\0044\5\3\0006\6\0\0'\b\v\0B\6\2\0029\6\6\6>\6\1\5=\5\f\0044\5\3\0006\6\0\0'\b\r\0B\6\2\0029\6\6\6>\6\1\5=\5\14\0044\5\3\0006\6\0\0'\b\15\0B\6\2\0029\6\16\6>\6\1\5=\5\17\0044\5\3\0006\6\0\0'\b\18\0B\6\2\0029\6\19\6>\6\1\5=\5\20\4=\4\21\3B\1\2\0016\1\22\0009\1\23\1'\3\24\0B\1\2\0016\1\22\0009\1\25\0019\1\26\1'\3\27\0'\4\28\0'\5\29\0005\6\30\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\16:Format<CR>\14<Leader>f\6n\20nvim_set_keymap\bapia  augroup FormatAutogroup\n    autocmd!\n    autocmd BufWritePost * FormatWrite\n  augroup END\n\bcmd\bvim\rfiletype\6*\31remove_trailing_whitespace\28formatter.filetypes.any\blua\vstylua\28formatter.filetypes.lua\tjson\29formatter.filetypes.json\15javascript#formatter.filetypes.javascript\20typescriptreact(formatter.filetypes.typescriptreact\15typescript\1\0\0\rprettier#formatter.filetypes.typescript\1\0\1\flogging\1\nsetup\14formatter\19formatter.util\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\n&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\2\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\3\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\4\0B\0\2\1K\0\1\0\1¿\rnav_file⁄\2\1\0\a\0\19\00026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\1B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0003\6\f\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0003\6\14\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\15\0003\6\16\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\17\0003\6\18\0B\2\4\0012\0\0ÄK\0\1\0\0\14<leader>4\0\14<leader>3\0\14<leader>2\0\14<leader>1\22toggle_quick_menu\20<leader><space>\radd_file\amm\6n\bset\vkeymap\bvim\15harpoon.ui\17harpoon.mark\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\n6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15definition\bbuf\blsp\bvim1\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\nhover\bbuf\blsp\bvim<\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\21workspace_symbol\bbuf\blsp\bvim5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim4\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\14goto_next\15diagnostic\bvim4\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\14goto_prev\15diagnostic\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15references\bbuf\blsp\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\19signature_help\bbuf\blsp\bvimÕ\3\1\2\t\0\27\0S5\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\6\0003\a\a\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\b\0003\a\t\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\n\0003\a\v\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\f\0003\a\r\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\14\0003\a\15\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\16\0003\a\17\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\18\0003\a\19\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\20\0003\a\21\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\22\0003\a\23\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\24\0'\6\25\0003\a\26\0\18\b\2\0B\3\5\1K\0\1\0\0\n<C-h>\6i\0\16<leader>vrn\0\16<leader>vrr\0\16<leader>vca\0\a]d\0\a[d\0\15<leader>vd\0\16<leader>vws\0\6K\0\agd\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1Å\6\1\0\t\0*\0G6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0005\3\5\0B\1\2\0019\1\6\0B\1\1\0016\1\0\0'\3\a\0B\1\2\0025\2\n\0009\3\b\0019\3\t\3=\3\v\0029\3\f\0009\3\r\0035\5\16\0009\6\14\0019\6\15\6\18\b\2\0B\6\2\2=\6\17\0059\6\14\0019\6\18\6\18\b\2\0B\6\2\2=\6\19\0059\6\14\0019\6\20\0065\b\21\0B\6\2\2=\6\22\0059\6\14\0019\6\23\6B\6\1\2=\6\24\5B\3\2\2+\4\0\0=\4\25\3+\4\0\0=\4\26\0039\4\27\0005\6\28\0=\3\14\6B\4\2\0019\4\29\0003\6\30\0B\4\2\0019\4\31\0B\4\1\0016\4\0\0'\6 \0B\4\2\0029\4\31\0045\6!\0B\4\2\0019\4\"\0005\6#\0005\a$\0=\a%\6B\4\2\0016\4&\0009\4'\0049\4(\0045\6)\0B\4\2\1K\0\1\0\1\0\1\17virtual_text\2\vconfig\15diagnostic\bvim\15sign_icons\1\0\4\nerror\6E\thint\6H\twarn\6W\tinfo\6I\1\0\1\24suggest_lsp_servers\1\20set_preferences\1\0\3\18close_timeout\3Ë\a\17hint_enabled\2\20floating_window\1\18lsp_signature\nsetup\0\14on_attach\1\0\0\19setup_nvim_cmp\f<S-Tab>\n<Tab>\14<C-Space>\rcomplete\n<C-y>\1\0\1\vselect\2\fconfirm\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\17cmp_mappings\rdefaults\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\19nvim_workspace\1\2\0\0\rtsserver\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n\\\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21operator_mapping\14<leader>c\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
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
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
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
    config = { "\27LJ\2\nÚ\3\0\0\a\0\22\0C6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0009\5\t\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0009\5\v\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\14\0009\5\15\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\16\0009\5\17\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\18\0009\5\19\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\20\0'\5\21\0B\1\4\1K\0\1\0\n<Nop>\r<Escape>\14help_tags\15<leader>ft\25lsp_document_symbols\14<leader>[\26lsp_workspace_symbols\14<leader>]\fbuffers\20<leader><Space>\14live_grep\14<leader>/\rcommands\15<leader>fc\15find_files\n<C-p>\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nY\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\nicons\2\25use_diagnostic_signs\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/vladimir/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n˚\1\0\0\6\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\n<C-n>\6n\20nvim_set_keymap\bapi\bvim\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n˙\5\0\0\t\0\31\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\a\0004\5\3\0006\6\0\0'\b\5\0B\6\2\0029\6\6\6>\6\1\5=\5\b\0044\5\3\0006\6\0\0'\b\t\0B\6\2\0029\6\6\6>\6\1\5=\5\n\0044\5\3\0006\6\0\0'\b\v\0B\6\2\0029\6\6\6>\6\1\5=\5\f\0044\5\3\0006\6\0\0'\b\r\0B\6\2\0029\6\6\6>\6\1\5=\5\14\0044\5\3\0006\6\0\0'\b\15\0B\6\2\0029\6\16\6>\6\1\5=\5\17\0044\5\3\0006\6\0\0'\b\18\0B\6\2\0029\6\19\6>\6\1\5=\5\20\4=\4\21\3B\1\2\0016\1\22\0009\1\23\1'\3\24\0B\1\2\0016\1\22\0009\1\25\0019\1\26\1'\3\27\0'\4\28\0'\5\29\0005\6\30\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\16:Format<CR>\14<Leader>f\6n\20nvim_set_keymap\bapia  augroup FormatAutogroup\n    autocmd!\n    autocmd BufWritePost * FormatWrite\n  augroup END\n\bcmd\bvim\rfiletype\6*\31remove_trailing_whitespace\28formatter.filetypes.any\blua\vstylua\28formatter.filetypes.lua\tjson\29formatter.filetypes.json\15javascript#formatter.filetypes.javascript\20typescriptreact(formatter.filetypes.typescriptreact\15typescript\1\0\0\rprettier#formatter.filetypes.typescript\1\0\1\flogging\1\nsetup\14formatter\19formatter.util\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÚ\3\0\0\a\0\22\0C6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0009\5\t\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0009\5\v\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\14\0009\5\15\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\16\0009\5\17\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\18\0009\5\19\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\20\0'\5\21\0B\1\4\1K\0\1\0\n<Nop>\r<Escape>\14help_tags\15<leader>ft\25lsp_document_symbols\14<leader>[\26lsp_workspace_symbols\14<leader>]\fbuffers\20<leader><Space>\14live_grep\14<leader>/\rcommands\15<leader>fc\15find_files\n<C-p>\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nê\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\aÄ\15\0\4\0X\5\5Ä9\5\6\4\1\2\5\0X\5\2Ä+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcallÄ¿\f\1\1\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0003\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14highlight\fdisable\0\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17auto_install\2\17sync_install\2\1\5\0\0\blua\bvim\vvimdoc\15typescript\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nY\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\nicons\2\25use_diagnostic_signs\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n\\\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21operator_mapping\14<leader>c\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15definition\bbuf\blsp\bvim1\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\nhover\bbuf\blsp\bvim<\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\21workspace_symbol\bbuf\blsp\bvim5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim4\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\14goto_next\15diagnostic\bvim4\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\14goto_prev\15diagnostic\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15references\bbuf\blsp\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\19signature_help\bbuf\blsp\bvimÕ\3\1\2\t\0\27\0S5\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\6\0003\a\a\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\b\0003\a\t\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\n\0003\a\v\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\f\0003\a\r\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\14\0003\a\15\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\16\0003\a\17\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\18\0003\a\19\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\20\0003\a\21\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\22\0003\a\23\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\24\0'\6\25\0003\a\26\0\18\b\2\0B\3\5\1K\0\1\0\0\n<C-h>\6i\0\16<leader>vrn\0\16<leader>vrr\0\16<leader>vca\0\a]d\0\a[d\0\15<leader>vd\0\16<leader>vws\0\6K\0\agd\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1Å\6\1\0\t\0*\0G6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0005\3\5\0B\1\2\0019\1\6\0B\1\1\0016\1\0\0'\3\a\0B\1\2\0025\2\n\0009\3\b\0019\3\t\3=\3\v\0029\3\f\0009\3\r\0035\5\16\0009\6\14\0019\6\15\6\18\b\2\0B\6\2\2=\6\17\0059\6\14\0019\6\18\6\18\b\2\0B\6\2\2=\6\19\0059\6\14\0019\6\20\0065\b\21\0B\6\2\2=\6\22\0059\6\14\0019\6\23\6B\6\1\2=\6\24\5B\3\2\2+\4\0\0=\4\25\3+\4\0\0=\4\26\0039\4\27\0005\6\28\0=\3\14\6B\4\2\0019\4\29\0003\6\30\0B\4\2\0019\4\31\0B\4\1\0016\4\0\0'\6 \0B\4\2\0029\4\31\0045\6!\0B\4\2\0019\4\"\0005\6#\0005\a$\0=\a%\6B\4\2\0016\4&\0009\4'\0049\4(\0045\6)\0B\4\2\1K\0\1\0\1\0\1\17virtual_text\2\vconfig\15diagnostic\bvim\15sign_icons\1\0\4\nerror\6E\thint\6H\twarn\6W\tinfo\6I\1\0\1\24suggest_lsp_servers\1\20set_preferences\1\0\3\18close_timeout\3Ë\a\17hint_enabled\2\20floating_window\1\18lsp_signature\nsetup\0\14on_attach\1\0\0\19setup_nvim_cmp\f<S-Tab>\n<Tab>\14<C-Space>\rcomplete\n<C-y>\1\0\1\vselect\2\fconfirm\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\17cmp_mappings\rdefaults\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\19nvim_workspace\1\2\0\0\rtsserver\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\2\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\3\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\4\0B\0\2\1K\0\1\0\1¿\rnav_file⁄\2\1\0\a\0\19\00026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\1B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0003\6\f\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0003\6\14\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\15\0003\6\16\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\17\0003\6\18\0B\2\4\0012\0\0ÄK\0\1\0\0\14<leader>4\0\14<leader>3\0\14<leader>2\0\14<leader>1\22toggle_quick_menu\20<leader><space>\radd_file\amm\6n\bset\vkeymap\bvim\15harpoon.ui\17harpoon.mark\frequire\0", "config", "harpoon")
time([[Config for harpoon]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

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
