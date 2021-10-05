local packer = require('packer')

packer.init({
  git = {
  }
})
return packer.startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  use {'junegunn/vim-plug'}

  -- TreeSitter
  use {'nvim-treesitter/nvim-treesitter', cmd = {':TSUpdate'}}  

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},
        -- {'nvim-telescope/nvim-telescope-fzf-native-nvim', cmd = {'make'}},
      }
  }


  -- Lua development
  use { 'tjdevries/nlua.nvim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- NERDTree
  use { 'scrooloose/nerdtree' }

  -- LSP
  -- use { 'neovim/lspconfig' }
  use { 'nvim-lua/completion-nvim' }
  use { 'kabouzeid/nvim-lspinstall' }
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
  use { 'tpope/vim-surround' }

  -- Better F and T
  use { 'rhysd/clever-f.vim' }

  -- Underline the word under the cursor
  use { 'itchyny/vim-cursorword' }

  -- Color
  use { 'arcticicestudio/nord-vim' }

  -- Better matching with %
  use { 'tmhedberg/matchit' }

  -- Buffers look like tabs
  use { 'ap/vim-buftabline' }

  -- Typescript
  use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }

  -- Clang for google TS
  use { 'rhysd/vim-clang-format' }

  -- Automaticall pair brackets 
  use { 'jiangmiao/auto-pairs' }

  -- Show how the substitute will affect the file
  use { 'markonm/traces.vim' }

  -- More consistent text object usage
  use { 'paradigm/TextObjectify' }
end)
