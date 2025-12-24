return { 
  "sindrets/diffview.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    view = {
      merge_tool = {
        layout = "diff3_mixed",
      },
      file_panel = {
        win_config = {
          width = 35,
        },
      },
    },
    hooks = {
      diff_buf_read = function(bufnr)
        vim.api.nvim_buf_set_option(bufnr, "bufhidden", "wipe")
      end,
    },
  },
}
