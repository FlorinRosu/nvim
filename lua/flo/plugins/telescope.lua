return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-q>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist,
          },
        },
      },
  })

    require("telescope").load_extension("fzf")

  end,
}
