-- Neovim configurations

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indent size
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Automatic indents
vim.opt.smartindent = true

-- Find options
vim.opt.incsearch = true

-- Colours
vim.opt.termguicolors = true

-- Leader key option
vim.g.mapleader = " "

-- Spellcheck
vim.opt.spell = true
vim.opt.spelllang = 'en,it'

-- Universal clipboard
vim.opt.clipboard = 'unnamedplus'

-- Keymaps
vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
