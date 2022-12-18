local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}
)

function get_setup(name)
  return string.format('require("setup/%s")', name)
end

-- Install your plugins here

return packer.startup(function(use)

  -- My plugins here
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
  use({
    "nvim-treesitter/nvim-treesitter",
    config = get_setup("treesitter"),
    run = ":TSUpdate",
  })

  use 'sheerun/vim-polyglot'

  use({ "navarasu/onedark.nvim",
    config = get_setup("onedark"),
  })

  use({
    "nvim-lualine/lualine.nvim",
    config = get_setup("lualine"),
    event = "VimEnter",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })

  use({
    "folke/which-key.nvim",
    config = get_setup("which-key"),
  })

  use({
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = get_setup("gitsigns"),
  })

  use({
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    config = get_setup("nvim-tree"),
  })


  use({
    "glepnir/dashboard-nvim",
    config = get_setup("dashboard"),
  })

  use({
    "kdheepak/lazygit.nvim",
    config = get_setup("lazygit"),
  })
  use({ "kyazdani42/nvim-web-devicons" })

  use({
    "nvim-telescope/telescope.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
    },
    config = get_setup("telescope"),
  })

  use({ "nvim-telescope/telescope-file-browser.nvim" })

  use({
    "norcalli/nvim-colorizer.lua",
    config = get_setup("colorizer"),
  })

  use({ "numToStr/FTerm.nvim",
    config = get_setup("Fterm"),
  })

  use({
    "noib3/nvim-cokeline",
    requires = "kyazdani42/nvim-web-devicons",
    config = get_setup("cokeline"),
  })

  use({ "theprimeagen/harpoon",
    config = get_setup("harpoon"),
  })
  use({ "mbbill/undotree",
    config = get_setup("undotree"),
  })
  use({ "tpope/vim-fugitive",
    config = get_setup("fugitive"),
  })
  use({
    "VonHeikemen/lsp-zero.nvim",
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    },
    config = get_setup("lsp"),
  })

  use({ "sindrets/diffview.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = get_setup("diffview")
    })
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
