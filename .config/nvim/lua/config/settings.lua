-- Shorthand definition
local options = vim.opt
-- Line numbers
options.nu = true
options.relativenumber = true

-- Indent size
options.tabstop = 4
options.softtabstop = 4
options.shiftwidth = 4

-- Automatic indents
options.smartindent = true

-- Find options
options.hlsearch = false
options.incsearch = true

-- Colours
options.termguicolors = true

-- Leader key option
vim.g.mapleader = " "

-- Spellcheck
options.spell = true
options.spelllang = 'en,it'

-- Universal clipboard
options.clipboard = 'unnamedplus'
