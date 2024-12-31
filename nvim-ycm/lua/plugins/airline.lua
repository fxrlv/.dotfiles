return {
  {
    'vim-airline/vim-airline',

    dependencies = {
      'vim-airline/vim-airline-themes',
    },

    init = function()
      vim.g['airline_powerline_fonts'] = 1
      vim.g['airline_inactive_collapse'] = 0

      vim.g['airline#extensions#tabline#enabled'] = 1
      vim.g['airline#extensions#tabline#formatter'] = 'short_path_improved'
      vim.g['airline#extensions#tabline#show_buffers'] = 0
      vim.g['airline#extensions#tabline#show_close_button'] = 0
      vim.g['airline#extensions#tabline#show_tab_count'] = 0
      vim.g['airline#extensions#tabline#show_tab_type'] = 0
      vim.g['airline#extensions#tabline#tab_nr_type'] = 1

      vim.g['airline#extensions#ycm#enabled'] = 1

      vim.g['airline#extensions#default#layout'] = { { 'a', 'b', 'c' }, { 'warning', 'error', 'z' } }
    end,

    config = function()
      local symbols = {
        linenr = '',
        maxlinenr = '',
      }

      vim.g['airline_symbols'] = vim.tbl_extend('force', vim.g['airline_symbols'] or {}, symbols)
      vim.g['airline_section_z'] = vim.api.nvim_call_function('airline#section#create', { { 'linenr', 'maxlinenr' } })
    end,
  },
}
