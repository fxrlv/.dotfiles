return {
  {
    'nanotech/jellybeans.vim',

    init = function()
      vim.g['jellybeans_overrides'] = {
        background = { guibg = '121212' },
        StatusLine = { guibg = '262626' },
        VertSplit = { guibg = '121212' },
      }
    end,

    config = function()
      vim.cmd('colorscheme jellybeans')
    end,
  },
}
