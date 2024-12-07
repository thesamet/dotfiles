require("config.lazy")

vim.colorcolumn=100
vim.ruler=true
vim.shiftwidth=4
vim.smartindent=true
vim.tabstop=4
vim.cursorline=true
vim.expandtab=true

vim.keymap.set('n', '<left>', ':bp<CR>', { silent = true })
vim.keymap.set('n', '<right>', ':bn<CR>', { silent = true })
vim.keymap.set('n', ',,', ':wincmd w<CR>', { silent = true })
vim.keymap.set('n', ',.', ':wincmd W<CR>', { silent = true })
vim.keymap.set('c', '<C-D>', "<C-r>=expand('%:h')<CR>/")
