-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.catppuccin")

vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
