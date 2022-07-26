vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  -- Lsp Config
  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'

  -- Completion framework
  use 'hrsh7th/nvim-cmp'

  -- LSP completion source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'

  -- Snippet completion source for nvim-cmp
  use 'hrsh7th/cmp-vsnip'

  -- other usefull compleiton sources
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'


  -- Snippet engine
  use 'hrsh7th/vim-vsnip'

  -- Fuzzy finder
  -- Optional
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'
end)
