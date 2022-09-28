return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- common
  use 'tpope/vim-fugitive' -- Git commands
  use 'vim-airline/vim-airline' -- powerline
  use 'vim-airline/vim-airline-themes'

  use { 'lewis6991/gitsigns.nvim', -- git added/removed in sidebar + inline blame
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup({
        current_line_blame = false
      })
    end
  }

  -- color schemes
  use 'gruvbox-community/gruvbox'

  -- general dev
  use {
      "williamboman/nvim-lsp-installer",
      "neovim/nvim-lspconfig",
  }
  use 'kabouzeid/nvim-lspinstall'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-compe'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'scrooloose/nerdcommenter' -- commenting shortcuts
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- search
  use { 
    'nvim-telescope/telescope.nvim', requires = {
      {'nvim-lua/popup.nvim'}, 
      {'nvim-lua/plenary.nvim'},
    } 
  }
  use 'tpope/vim-eunuch' -- wrappers UNIX commands
  use 'tpope/vim-surround' -- surround characters shortcuts
  use 'tpope/vim-vinegar' -- file browser
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- for file icon
    }
  } -- file browser

  -- javascript
  use { 'HerringtonDarkholme/yats.vim', ft = 'typescript' }
  use { 'posva/vim-vue' } -- Vue highlighting
  use 'othree/javascript-libraries-syntax.vim'
end)
