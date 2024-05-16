vim.opt_local.commentstring = '-- %s'

require('cmp').setup.buffer {
  sources = {
    { name = 'vim-dadbod-completion' },
    { name = 'buffer' },
  },
}
