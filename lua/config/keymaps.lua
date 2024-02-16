-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add Move Up and Down
vim.keymap.set({ "n", "i" }, "<A-Down>", "<esc><cmd>m .+1<cr>==gi", {})
vim.keymap.set({ "n", "i" }, "<A-Up>", "<esc><cmd>m .-2<cr>==gi", {})

-- Delete Default Move Up and Down
vim.keymap.del("n", "<A-j>")
vim.keymap.del("n", "<A-k>")

-- Add Enter New Line
vim.keymap.set("i", "<C-Enter>", "<esc>o", {})

-- Add Terminal Toggle
vim.keymap.set({ "n", "i" }, "<C-`>", function()
  require("lazyvim.util").terminal(nil, { cwd = require("lazyvim.util").root() })
end, {})
vim.keymap.set("t", "<C-`>", "<cmd>close<cr>", {})

-- Delete Default Terminal Toggle
vim.keymap.del("t", "<C-/>")
vim.keymap.del("n", "<C-/>")
