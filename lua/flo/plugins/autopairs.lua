return{
  "windwp/nvim-autopairs",
  event = {"InsertEnter"},
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true, -- enable treesitter
      ts_config = {
        lua = { "string" },
        javascript = { "template_string" },
        java = false, -- don't check treesitter on java
      }
    })

    require("cmp").event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())
  end,
}
