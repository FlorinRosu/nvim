return {
  "folke/which-hey.nvim",
--  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
  },
}
