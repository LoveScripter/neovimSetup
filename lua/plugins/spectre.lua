return {
  "nvim-pack/nvim-spectre",
  event = "VeryLazy",
  keys = {
    {
      "<leader>sr",
      '<cmd>lua require("spectre").open()<CR>',
      desc = "Search & Replace (Project)",
    },
    {
      "<leader>sw",
      '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
      mode = "v",
      desc = "Search Word (Spectre)",
    },
    {
      "<leader>sf",
      '<cmd>lua require("spectre").open_file_search()<CR>',
      desc = "Search in Current File (Spectre)",
    },
  },
}
