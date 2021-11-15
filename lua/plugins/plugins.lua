local packer = require('packer')

packer.init({
  git = {
  }
})
return packer.startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim'}

  use {'junegunn/vim-plug'}
  vim.cmd("call plug#begin('~/.vim/plugged')")

  -- TreeSitter
  use {'nvim-treesitter/nvim-treesitter', cmd = {':TSUpdate'}}

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},
        -- Installing here is failing. Installing via Vim Plug.
        -- {'nvim-telescope/nvim-telescope-fzf-native-nvim', cmd = {'make'}},
      }
  }
  vim.cmd("Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }")

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- LSP
  vim.cmd("Plug 'neovim/nvim-lspconfig'")
  use { 'nvim-lua/completion-nvim' }
  use { 'ray-x/lsp_signature.nvim' }
  use { 'RishabhRD/popfix' }
  use { 'RishabhRD/nvim-lsputils' }

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'L3MON4D3/LuaSnip' },
    }
  }

  -- tpope
  use { 'tpope/vim-repeat' }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-commentary' }

  -- Better F and T
  use { 'rhysd/clever-f.vim' }

  -- Status Bar
  use { 'vim-airline/vim-airline' }
  vim.cmd("Plug 'vkim-airline/vim-airline-themes'")
  -- use { 'vkim-airline/vim-airline-themes' }

  -- Color
  use { 'arcticicestudio/nord-vim' }

  -- Typescript
  use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }

  -- Clang for google TS
  use { 'rhysd/vim-clang-format' }

  -- Automatically pair brackets
  use { 'jiangmiao/auto-pairs' }

  -- Show how the substitute will affect the file
  use { 'markonm/traces.vim' }

  -- Signal line additions and deletions
  use { 'mhinz/vim-signify' }

  -- Better Whitespace
  use { 'ntpeters/vim-better-whitespace' }

  -- Autoformatter
  use { 'chiel92/vim-autoformat' }
  vim.cmd("call plug#end()")
end)
