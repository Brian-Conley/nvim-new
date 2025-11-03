vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color scheme
  --use 'folke/tokyonight.nvim'
  use 'EdenEast/nightfox.nvim'

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  --use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- Auto Complete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Snippets
  use('dcampos/nvim-snippy')
  use('dcampos/cmp-snippy')

  -- Mason
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Auto pairs
  use('jiangmiao/auto-pairs')
  use('tpope/vim-surround')

  -- Indent Guide
  use('nvimdev/indentmini.nvim')
end)
