return {
  {
    'neovim/nvim-lspconfig',

    opts = {
        servers = {
            gopls = {},
        },
    },

    config = function(_, opts)
        require("lspconfig").gopls.setup({
            cmd = { "/Users/fxrlv/go/bin/gopls" },
        })
    end,

    enabled = false,
  },
}
