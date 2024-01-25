return {
  {
    'ycm-core/YouCompleteMe',

    init = function()
      vim.opt.completeopt = 'menuone'

      vim.g['ycm_confirm_extra_conf'] = 0

      vim.g['ycm_key_invoke_completion'] = '<C-p>'

      vim.g['ycm_disable_signature_help'] = 1
      vim.g['ycm_enable_diagnostic_signs'] = 0
      vim.g['ycm_update_diagnostics_in_insert_mode'] = 0
      vim.g['ycm_echo_current_diagnostic'] = 0

      vim.g['ycm_auto_hover'] = ''

      vim.g['ycm_gopls_binary_path'] = '/Users/fxrlv/Downloads/gopls'

      vim.g['ycm_language_server'] = {
        {
            name      = 'zls',
            filetypes = { 'zig' },
            cmdline   = { '/Users/fxrlv/Downloads/zls' },
        }
      }
    end,

    config = function()
      vim.keymap.set('n', '<C-]>', '<Cmd> YcmCompleter GoTo <CR>')
      vim.keymap.set('n', '<C-[>', '<Cmd> YcmCompleter GoToReferences <CR>')

      vim.keymap.set('n', '<Leader>f', '<Cmd> YcmCompleter Format <CR>')
    end,
  },
}
