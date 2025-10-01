---@type LazySpec
return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      default_provider = "gemini",
      -- add any opts here
      -- for example
      -- disabled_tools = {
      -- "python",
      -- "rag_search",
      -- "git_diff",
      -- "git_commit",
      -- "list_files",
      -- "search_files",
      -- "search_keyword",
      -- "read_file_toplevel_symbols",
      -- "read_file",
      -- "create_file",
      -- "rename_file",
      -- "delete_file",
      -- "create_dir",
      -- "rename_dir",
      -- "delete_dir",
      -- "bash",
      -- "web_search",
      -- "fetch",
      -- }, -- disable only the python tool
      providers = {
        gemini = {
          endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
          model = "gemini-2.5-pro-preview-05-06",
        },
        -- openai = {
        -- endpoint = "https://api.openai.com/v1",
        -- model = "o3-mini",
        -- },
        -- claude = {
        -- endpoint = "https://api.anthropic.com/v1/messages",
        -- model = "claude-3-5-sonnet-20240620",
        -- },
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
