return {
  'barrettruth/canola.nvim',
  branch = 'canola',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    vim.g.canola = {
      columns = { 'icon', 'permissions', 'size', 'ntime' },
      cursor = true,
      hidden = {
        enabled = false,
      },
      keymaps = {
        ['<C-h>'] = false,
        ['<M-h>'] = 'actions.select_split',
      },
      watch = false,
    }

    vim.keymap.set('n', '-', '<CMD>Canola<CR>', { desc = 'Open parent directory' })

    vim.keymap.set('n', '<leader>-', require('canola').toggle_float, { desc = 'Open parent directory (floatign)' })
  end,
}
