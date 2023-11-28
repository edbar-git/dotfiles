-- Sets leader key to space
vim.g.mapleader = " "

-- Enables fat cursor on neovim
vim.opt.guicursor = ""

-- Enables numbered lines and relative numbered lines
vim.opt.nu = true
vim.opt.relativenumber = true

-- Classic tabs length config
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Allows vim to keep an undo history for a long time
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Improves searching experience
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Improves color compatibility
vim.opt.termguicolors = true

-- Improves scrolling experience
vim.opt.scrolloff = 15

-- Fast update time
vim.opt.updatetime = 50

-- Improves split window experience
vim.cmd "set splitbelow splitright"

