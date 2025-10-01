-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>", { desc = "Git Diff View" })
vim.keymap.set("n", "<leader>gh", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
