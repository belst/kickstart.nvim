vim.keymap.set('n', '<leader>oe', '<CMD>Oil<CR>', { desc = '[O]pen [E]xplore (Oil)' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join Lines' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll half a page down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll half a page up' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search match (centered)' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search match (centered)' })

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = '[P]aste without overwriting paste register' })

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = '[D]elete selection without yanking it first' })

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat document' })

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[S]earch/Replace item under cursor' })
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'Make current file e[x]ecutable' })
