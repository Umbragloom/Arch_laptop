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
local package_path_str = "/home/umbragloom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/umbragloom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/umbragloom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/umbragloom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/umbragloom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    config = { 'require("setup/comment")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FTerm.nvim"] = {
    config = { 'require("setup/Fterm")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { 'require("setup/alpha")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bclose.vim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/bclose.vim",
    url = "https://github.com/rbgrouleff/bclose.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["diffview.nvim"] = {
    config = { 'require("setup/diffview")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["eva01.vim"] = {
    config = { 'require("setup/eva01")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/eva01.vim",
    url = "https://github.com/hachy/eva01.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gentledark.vim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/gentledark.vim",
    url = "https://github.com/gentlelionstudios/gentledark.vim"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("setup/gitsigns")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { 'require("setup/harpoon")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  knap = {
    config = { 'require("setup/knap")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/knap",
    url = "https://github.com/frabjous/knap"
  },
  ["lazygit.nvim"] = {
    config = { 'require("setup/lazygit")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lsp-zero.nvim"] = {
    config = { 'require("setup/lsp")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { 'require("setup/lualine")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nightforest.nvim"] = {
    config = { 'require("setup/nightforest")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nightforest.nvim",
    url = "https://github.com/xfyuan/nightforest.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    config = { 'require("setup/cokeline")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/willothy/nvim-cokeline"
  },
  ["nvim-colorizer.lua"] = {
    config = { 'require("setup/colorizer")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tetris"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nvim-tetris",
    url = "https://github.com/alec-gibson/nvim-tetris"
  },
  ["nvim-tree.lua"] = {
    config = { 'require("setup/nvim-tree")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { 'require("setup/treesitter")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    config = { 'require("setup/ts-rainbow")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { 'require("setup/onedark")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["oxocarbon.nvim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/oxocarbon.nvim",
    url = "https://github.com/nyoom-engineering/oxocarbon.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenightfall.nvim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/palenightfall.nvim",
    url = "https://github.com/JoosepAlviste/palenightfall.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["ranger.vim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/ranger.vim",
    url = "https://github.com/francoiscabrol/ranger.vim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("setup/telescope")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyodark.nvim"] = {
    config = { 'require("setup/tokyodark")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/tokyodark.nvim",
    url = "https://github.com/tiagovla/tokyodark.nvim"
  },
  undotree = {
    config = { 'require("setup/undotree")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    config = { 'require("setup/fugitive")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-godot"] = {
    config = { 'require("setup/vim-godot")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/vim-godot",
    url = "https://github.com/habamax/vim-godot"
  },
  ["vim-neodark"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/vim-neodark",
    url = "https://github.com/CallumHoward/vim-neodark"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["which-key.nvim"] = {
    config = { 'require("setup/which-key")' },
    loaded = true,
    path = "/home/umbragloom/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("setup/nvim-tree")
time([[Config for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("setup/telescope")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require("setup/treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: tokyodark.nvim
time([[Config for tokyodark.nvim]], true)
require("setup/tokyodark")
time([[Config for tokyodark.nvim]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
require("setup/ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
require("setup/fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
require("setup/diffview")
time([[Config for diffview.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
require("setup/harpoon")
time([[Config for harpoon]], false)
-- Config for: vim-godot
time([[Config for vim-godot]], true)
require("setup/vim-godot")
time([[Config for vim-godot]], false)
-- Config for: undotree
time([[Config for undotree]], true)
require("setup/undotree")
time([[Config for undotree]], false)
-- Config for: nightforest.nvim
time([[Config for nightforest.nvim]], true)
require("setup/nightforest")
time([[Config for nightforest.nvim]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
require("setup/Fterm")
time([[Config for FTerm.nvim]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
require("setup/cokeline")
time([[Config for nvim-cokeline]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require("setup/which-key")
time([[Config for which-key.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
require("setup/alpha")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
require("setup/colorizer")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
require("setup/comment")
time([[Config for Comment.nvim]], false)
-- Config for: eva01.vim
time([[Config for eva01.vim]], true)
require("setup/eva01")
time([[Config for eva01.vim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
require("setup/onedark")
time([[Config for onedark.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
require("setup/gitsigns")
time([[Config for gitsigns.nvim]], false)
-- Config for: knap
time([[Config for knap]], true)
require("setup/knap")
time([[Config for knap]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
require("setup/lazygit")
time([[Config for lazygit.nvim]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
require("setup/lsp")
time([[Config for lsp-zero.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'lualine.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
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
