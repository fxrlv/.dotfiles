return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "starlark" },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "buildifier" },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        bzl = { "buildifier" },
      },
    },
  },
}
