---@type LazySpec
return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-dap-python", --optional
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  ft = "python", -- lazy load on python files
  config = function()
    require("venv-selector").setup()
  end,
  keys = {
    { ",v", "<cmd>VenvSelect<cr>" },
  },
}
