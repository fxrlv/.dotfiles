return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["_"] = { "trim_newlines", "trim_whitespace", lsp_format = "last" },
      },
    },
  },
}
