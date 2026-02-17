-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- set keymap options
local opts = { noremap = true, silent = true }

-- Move code up and down
vim.keymap.set("n", "<C-S-Down>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<C-S-Up>", ":m .-2<CR>==", opts)

vim.keymap.set("i", "<C-BS>", "<C-w>", opts)

-- VS Code style commenting
-- Ctrl + / to comment line (Normal, Insert, Visual)
vim.keymap.set("n", "<C-_>", "gcc", { remap = true, desc = "Comment Line" })
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Comment Line" })
vim.keymap.set("i", "<C-_>", "<esc>gcci", { remap = true, desc = "Comment Line" })
vim.keymap.set("i", "<C-/>", "<esc>gcci", { remap = true, desc = "Comment Line" })
vim.keymap.set("v", "<C-_>", "gc", { remap = true, desc = "Comment Selection" })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Comment Selection" })

-- Ctrl + Shift + / for Block Comment
vim.keymap.set("n", "<C-?>", "gbc", { remap = true, desc = "Comment Block" })
vim.keymap.set("i", "<C-?>", "<esc>gbci", { remap = true, desc = "Comment Block" })
vim.keymap.set("v", "<C-?>", "gb", { remap = true, desc = "Comment Block Selection" })
