-- Packer installation and plugins

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- OneDark Theme
	use 'navarasu/onedark.nvim'
	-- LSP plugin
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}
	-- MarkDown Preview on browser
	use 'davidgranstrom/nvim-markdown-preview'
	-- File icons
	use 'kyazdani42/nvim-web-devicons'
	-- Pastes images in md format
	use 'ekickx/clipboard-image.nvim'
	-- Git integration
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'
	-- Statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	-- Tab indentation line
	use 'lukas-reineke/indent-blankline.nvim'
	-- Treesitter highlighting
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	use 'ludovicchabant/vim-gutentags'
end)

-- Vim options

-- Sets tabs width to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Adds relative line numbers
vim.opt.number = true

-- Sync system clipboard with Vim clipboard
vim.o.clipboard = 'unnamedplus'

-- Color support
vim.o.termguicolors = true

-- When opening terminal view, automatically insert characters in the buffer
local reset_group = vim.api.nvim_create_augroup('reset_group', {clear = true})

vim.api.nvim_create_autocmd('TermOpen', {
	pattern = 'term://*',
	group = reset_group,
	command = 'startinsert'
})

-- Import custom keymaps

require("config.keymap")

-- Color scheme settings

require('onedark').setup {
	transparent = true
}
require('onedark').load()

-- Lualine configuration
require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'auto'
	}
}

-- LSP setup

local lsp = require('lsp-zero').preset({
	name = 'recommended',
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = true,
})

lsp.nvim_workspace()

lsp.setup()
