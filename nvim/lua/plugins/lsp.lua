return {
  {
    'neovim/nvim-lspconfig',

    dependencies = {
      "williamboman/mason.nvim",
    },

    config = function()
      local lspconfig = require('lspconfig')
      local mason = require("mason")

      mason.setup()

    --lspconfig.gopls.setup({
    --  settings = {
    --      gopls = {
    --          env = {
    --              GOPACKAGESDRIVER = "/Users/fxrlv/Developer/nebo/nebazel/tools/gopackagesdriver.sh",
    --          },
    --      },
    --  },
    --})
    end,
  },
}
