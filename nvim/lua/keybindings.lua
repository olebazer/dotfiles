-- Keybindings

local map = vim.keymap.set
vim.g.mapleader = " "
map({ "i", "v", "c" }, "<C-Space>", "<ESC>", { desc = "Escape" })
map("n", "<C-c>", "<CMD>set colorcolumn=80<CR>", { desc = "set colorcolumn" })
map("n", "<C-x>", "<CMD>set colorcolumn=0<CR>", { desc = "remove colorcolumn" })
map("n", "<C-v>", "gg=G", { desc = "format entire file with neovim" })
map("n", "gs", ":%s/", { desc = "substitute search" })
map("n", "<leader>ou", "O<ESC>", { desc = "insert new line above without leaving normal mode" })
map("n", "<leader>ob", "o<ESC>", { desc = "insert new line blow without leaving normal mode" })
map({ "n", "v" }, "<C-u>", "{", { desc = "jump up one block" })
map({ "n", "v" }, "<C-b>", "}", { desc = "jump down one block" })
map("n", "<C-o>", "<CMD>nohlsearch<CR>", { desc = "remove highlight after search" })
map("n", "<C-n>", "<CMD>NvimTreeToggle<CR>", { desc = "open file explorer tree" })
map("n", "<C-p>", "<CMD>Telescope find_files<CR>", { desc = "find files with Telescope" })
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "live grep with Telescope" })
map("n", "<leader>gh", vim.lsp.buf.hover, { desc = "hover over keyword" })
map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "go to definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "perform code action" })
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "format entire file with specific formatter" })
