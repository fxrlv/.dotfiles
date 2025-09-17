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
          root_dir = function(_, on_dir)
            on_dir(vim.uv.cwd())
          end,
          settings = {
            gopls = {
              analyses = { ST1000 = false },
              completeUnimported = true,
              semanticTokens = true,
              staticcheck = true,
            },
          },
        },
      },
    },
  },
  {
    "fredrikaverpil/neotest-golang",
  },
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/nvim-nio" },
    opts = {
      adapters = {
        ["neotest-golang"] = {},
      },
    },
  },
}
