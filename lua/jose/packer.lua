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

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

	use('ThePrimeagen/harpoon')
	use('folke/trouble.nvim')
	use 'shaunsingh/nord.nvim'

	vim.cmd[[colorscheme nord]]

    use 'jose-elias-alvarez/null-ls.nvim'
    use 'kyazdani42/nvim-web-devicons'
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'mbbill/undotree'
	use('tpope/vim-fugitive')
	use('github/copilot.vim')
    use {'edluffy/hologram.nvim'}

    -- use "geg2102/nvim-python-repl"
    use "christoomey/vim-tmux-navigator"
    -- use 'cjrh/vim-conda'
    -- use 'ubaldot/vim-conda-activate'

	-- use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }
    -- use 'luk400/vim-jukit'
    use {'Vigemus/iron.nvim'}
	-- vim.cmd.colorscheme "catppuccin"
	--
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	}

}
end)
