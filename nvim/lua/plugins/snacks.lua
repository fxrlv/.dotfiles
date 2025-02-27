return {
  {
    "folke/snacks.nvim",
    ---@module "snacks"
    ---@type snacks.Config
    opts = {
      dashboard = { enabled = false },
      indent = {
        animate = { enabled = false },
      },
      gitbrowse = {
        url_patterns = {
          ["gitlab%."] = {
            branch = "/-/tree/{branch}",
            file = "/-/blob/{branch}/{file}#L{line_start}-L{line_end}",
            commit = "/-/commit/{commit}",
          },
        },
      },
    },
  },
}
