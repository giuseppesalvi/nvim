return {
  "mfussenegger/nvim-lint",
  opts = {
    linters = {
      markdownlint_cli2 = {
        args = {
          "--config",
          vim.fn.expand("~/.markdownlint-cli2.yaml"),
          "--",
        },
      },
    },
  },
}