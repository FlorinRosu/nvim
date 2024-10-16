return{
  "gbprod/substitute.nvim",
  event = {"BufReadPre", "BufNewFile"},
  config = function()
    require("substitute").setup()
    
    local keymap = vim.keymap -- for conciseness

    -- keys for substitution
    keymap.set("n", "s", require("substitute").operator, { desc = "Substitution with motion"})
    keymap.set("n", "ss", require("substitute").line, { desc = "Substitution line"})
    keymap.set("n", "S", require("substitute").eol, { desc = "Substitution to end of line"})
    keymap.set("x", "s", require("substitute").visual, { desc = "Substitution in visual mode"})
  end
}
