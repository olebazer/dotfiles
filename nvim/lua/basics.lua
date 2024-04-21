-- basic settings

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.guicursor = "i:block"
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "number"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = "> ", trail = ".", nbsp = "_" }
vim.opt.scrolloff = 12
vim.opt.hlsearch = true
vim.opt.laststatus = 0
vim.opt.cmdheight = 0
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.fillchars = "eob: "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Turn off search highlighting" })
vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle nvim tree" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
