return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = function(_, opts)
      opts.prompts = opts.prompts or {}

      -- 🧩 Get current Git branch name once at startup
      local branch = vim.fn.system("git branch --show-current"):gsub("%s+", "")

      -- 🪶 Define custom Commit prompt using Commitizen convention
      opts.prompts.Commit = {
        prompt = "Write commit message and a branch name for the change " ..
          "with commitizen convention. Keep the title under 50 characters. " ..
          "Current branch name: " .. branch,
      }

      return opts
    end,
  },
}
