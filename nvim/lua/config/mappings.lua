-- vim.keymap.set('n', ';', ':')
-- vim.keymap.set('n', ':', ';')
-- vim.keymap.set('v', ';', ':')
-- vim.keymap.set('v', ':', ';')

-- vim.keymap.set('v', 'J', ':move \'>+1<CR>gv=gv', { silent = true })
-- vim.keymap.set('v', 'K', ':move \'<-2<CR>gv=gv', { silent = true })

vim.keymap.set('n', '<Leader>w', '<Cmd>w<CR>')
vim.keymap.set('n', '<Leader>q', '<Cmd>q<CR>')

vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<Cmd>bnext<CR>", { desc = "Next buffer" })
