return {
  {
    'nanotech/jellybeans.vim',

    init = function()
      vim.g['jellybeans_overrides'] = {
        background = { guibg = '151515' },
        StatusLine = { guibg = '262626' },
        VertSplit = { guibg = '151515' },
      }
    end,

    config = function()
      vim.cmd('colorscheme jellybeans')
    end,
  },
}
