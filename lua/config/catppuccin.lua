require("catppuccin").setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha
  background = {
    light = "latte",
    dark = "macchiato",
  },
  transparent_background = true, -- Enable transparency to work with terminal
  show_end_of_buffer = false,
  term_colors = true,
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = { "bold" },
    strings = {},
    variables = {},
    numbers = {},
    booleans = { "bold" },
    properties = {},
    types = { "bold" },
    operators = {},
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = {
      enabled = true,
    },
    mason = true,
    treesitter = true,
    treesitter_context = true,
    which_key = true,
    indent_blankline = {
      enabled = true,
      scope_color = "lavender",
      colored_indent_levels = false,
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
    mini = {
      enabled = true,
      indentscope_color = "lavender",
    },
    dashboard = true,
    noice = true,
    notify = true,
    flash = true,
  },
})

vim.cmd.colorscheme("catppuccin")
