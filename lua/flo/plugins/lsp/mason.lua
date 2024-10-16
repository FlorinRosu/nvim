return{
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim"
  },

  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      -- list of servers for mason to install
      ensure_installed = {
        "lua_ls",
        "clangd",
        "pylyzer"
      },
    })

    require("mason-tool-installer").setup({
      ensure_installed = {
        "stylua",
      },
    })
  end
}
