return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "go", "gomod", "gowork", "gosum" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          root_dir = function(_)
            return vim.uv.cwd()
          end,
          settings = {
            gopls = {
              completeUnimported = true,
              semanticTokens = true,
              staticcheck = true,
            },
          },
        },
      },
    },
  },
}
