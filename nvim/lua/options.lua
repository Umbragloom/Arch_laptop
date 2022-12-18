local set=vim.opt
local gset=vim.g

set.hidden = true
set.encoding = "utf-8"
set.ruler = true
set.cursorline = true
set.cursorcolumn = true
set.foldenable = true
set.foldmethod = "manual"
set.hlsearch = true
set.incsearch = true
set.linebreak = true
set.number = true
set.list = true
set.listchars = { tab = "  ", trail = "."}
set.relativenumber = true
set.splitbelow = true
set.splitright = true
set.termguicolors = true
set.guicursor ="n-v-c-sm:block-blinkwait50-blinkon50-blinkoff50,i-ci-ve:ver25-Cursor-blinkon100-blinkoff100,r-cr-o:hor20"
set.undodir = vim.fn.stdpath("config") .. "/undo"
set.undofile = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.showtabline = 2
set.smartindent = true
set.autoindent = true
set.laststatus = 0
set.background = dark
set.history = 1000
set.textwidth = 79
set.ignorecase = true
set.wrap = false
set.cmdheight = 2
set.conceallevel = 0
set.pumheight = 10
set.showcmd = false
set.clipboard = "unnamedplus"
set.smartcase = true
set.showmatch = true
set.modelines = 0
set.visualbell = true
set.swapfile = false
gset.loaded_netrw = 1
gset.loaded_netrwPlugin = 1
set.showmode = false
set.backup = false
set.scrolloff = 8
set.signcolumn = "yes"
set.updatetime = 50
set.colorcolumn = "80"


local api = vim.api
-- Highlight on yank
local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
api.nvim_create_autocmd("TextYankPost", {
  group = yankGrp,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = "Highlight yank",
})

-- show cursor line only in active window
local cursorGrp = api.nvim_create_augroup("CursorLine", { clear = true })
api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, { pattern = "*", command = "set cursorline", group = cursorGrp })
api.nvim_create_autocmd(
  { "InsertEnter", "WinLeave" },
  { pattern = "*", command = "set nocursorline", group = cursorGrp }
)

-- show cursor col line only in active window
local cursorColGrp = api.nvim_create_augroup("CursorColumn", { clear = true })
api.nvim_create_autocmd(
  { "InsertLeave", "WinEnter" },
  { pattern = "*", command = "set cursorcolumn", group = cursorColGrp }
)
api.nvim_create_autocmd(
  { "InsertEnter", "WinLeave" },
  { pattern = "*", command = "set nocursorcolumn", group = cursorColGrp }
)
