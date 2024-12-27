return {
  "mfussenegger/nvim-dap-python",
  keys = {
    {
      "<F5>",
      function()
        require("dap").continue()
      end,
      desc = "Continue",
    },
    {
      "<F10>",
      function()
        require("dap").step_over()
      end,
      desc = "Step Over",
    },
    {
      "<F11>",
      function()
        require("dap").step_into()
      end,
      desc = "Step Into",
    },
    {
      "<F12>",
      function()
        require("dap").step_out()
      end,
      desc = "Step Out",
    },
    {
      "<leader>b",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Toggle Breakpoint",
    },
    {
      "<leader>df",
      function()
        require("dap-python").debug_file()
      end,
      desc = "Debug Python File",
    },
    {
      "<leader>dt",
      function()
        require("dap-python").test_method()
      end,
      desc = "Debug Test",
    },
  },
  config = function()
    local adapter_python_path = require("mason-registry").get_package("debugpy"):get_install_path()
      .. "/venv/bin/python"
    require("dap-python").setup(adapter_python_path)
    require("dap-python").test_runner = "pytest"
  end,
}
