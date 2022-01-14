local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'overcache/NeoSolarized'

  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  use 'ryanoasis/vim-devicons'
  use {
    'norcalli/nvim-colorizer.lua',
    config = function() require'colorizer'.setup() end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'ryanoasis/vim-devicons', opt = true }
  }
  -- Treesitter setting
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use 'windwp/nvim-ts-autotag'
  -- Tree Explorer
  use 'kyazdani42/nvim-web-devicons'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  -- use {
  --   'ms-jpq/chadtree',
  --   branch = 'chad',
  --   run =  'python3 -m chadtree deps'
  -- }

  -- Comment Stuff
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'numToStr/Comment.nvim'

  -- Autopairs
  use "windwp/nvim-autopairs"

  -- LSPs
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use {
  "ray-x/lsp_signature.nvim"
  }
  use 'glepnir/lspsaga.nvim'

  -- Formatter
  use 'sbdchd/neoformat'

  -- Completion
  use {
    'ms-jpq/coq_nvim',
    branch = 'coq'
  }

  use {
    'ms-jpq/coq.artifacts',
    branch = 'artifacts'
  }

  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-media-files.nvim'
  
  -- Terimnal
  -- use {"akinsho/toggleterm.nvim"}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
