return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      -- Path to the real adapter entry file
      local mason_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter"
      local adapter_path = mason_path .. "/js-debug/src/dapDebugServer.js"

      dap.adapters["pwa-node"] = {
        type = "executable",
        command = "node",
        args = { adapter_path },
      }

      dap.configurations.javascript = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch current file",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          console = "integratedTerminal",
        },
      }

      dap.configurations.typescript = dap.configurations.javascript
    end,
  },
}
