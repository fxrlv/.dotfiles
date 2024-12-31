return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',

    dependencies = {
      'nvim-lua/plenary.nvim',
      {
          "nvim-telescope/telescope-fzf-native.nvim",
          enabled = vim.fn.executable "make" == 1,
          build = "make",
      },
    },

    keys = {
      { '<Leader>ff', '<Cmd> Telescope find_files <CR>', desc = 'Find File' },
      { '<Leader>fb', '<Cmd> Telescope buffers <CR>', desc = 'Find Buffer' },
    },

    lazy = false,

    config = function()
        require('telescope').setup()
        require('telescope').load_extension('fzf')
    end,
  },
}
