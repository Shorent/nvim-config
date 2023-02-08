return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Rose Pine Theme
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			require("rose-pine").setup()
			vim.cmd('colorscheme rose-pine')
		end
	})

	-- Dashboard
	use {'glepnir/dashboard-nvim'}
	use {'nvim-tree/nvim-web-devicons'}

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

	-- UndoTree
	use('mbbill/undotree')

	-- Git
	use('tpope/vim-fugitive')

	-- LSP
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')
end)
