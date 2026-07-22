-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.g.clipboard = {
      name = "OSC 52",
      copy = {
        ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
        ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
      },
      paste = {
        ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
        ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
      },
    }
  end,
})

vim.opt.clipboard = "unnamedplus"

-- Spelling configuration
vim.opt.spell = true
vim.opt.spelllang = { "it", "en_us" }

-- Filter out MD051 markdownlint errors
vim.diagnostic.config({
  virtual_text = {
    filter = function(diagnostic)
      -- Filter out MD051 errors from markdownlint
      return not (diagnostic.source == "markdownlint" and diagnostic.code == "MD051")
    end,
  },
  signs = {
    filter = function(diagnostic)
      return not (diagnostic.source == "markdownlint" and diagnostic.code == "MD051")
    end,
  },
  underline = {
    filter = function(diagnostic)
      return not (diagnostic.source == "markdownlint" and diagnostic.code == "MD051")
    end,
  },
  float = {
    filter = function(diagnostic)
      return not (diagnostic.source == "markdownlint" and diagnostic.code == "MD051")
    end,
  },
})
