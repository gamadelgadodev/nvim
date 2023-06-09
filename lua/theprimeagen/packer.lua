-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('vim-airline/vim-airline')
  use('drewtempelmeyer/palenight.vim')
  use('preservim/nerdtree')
  use('dense-analysis/ale')
  --use('SirVer/ultisnips')
  --use('honza/vim-snippets')
  use('williamboman/nvim-lsp-installer')
  use('OmniSharp/omnisharp-vim')
  use('nickspoons/vim-sharpenup')
  use('junegunn/fzf')
  use('junegunn/fzf.vim')
  --use('prabirshrestha/asyncomplete.vim')
  use('itchyny/lightline.vim')
  use('shinchu/lightline-gruvbox.vim')
  use('maximbaz/lightline-ale')
  use('ellisonleao/gruvbox.nvim')
  use('jiangmiao/auto-pairs')
  use('preservim/nerdcommenter')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
                  --{'prabirshrestha/asyncomplete.vim'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
                  {'SirVer/ultisnips'},
                  {'honza/vim-snippets'},
	  }
  }
end)
