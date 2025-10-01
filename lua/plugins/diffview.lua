return {
  "sindrets/diffview.nvim",
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewFocusFiles",
    "DiffviewFileHistory",
  },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("diffview").setup({})
  end,
}
