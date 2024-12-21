require("config.lazy")

vim.opt.termguicolors = true
require("bufferline").setup{}

vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.colorcolumn="100"
vim.opt.ruler=true
vim.opt.shiftwidth=2
vim.opt.smartindent=true
vim.opt.tabstop=2
vim.opt.cursorline=true
vim.opt.expandtab=true

vim.keymap.set('n', '<left>', ':bp<CR>', { silent = true })
vim.keymap.set('n', '<right>', ':bn<CR>', { silent = true })
vim.keymap.set('n', ',,', ':wincmd w<CR>', { silent = true })
vim.keymap.set('n', ',.', ':wincmd W<CR>', { silent = true })
vim.keymap.set('c', '<C-D>', "<C-r>=expand('%:h')<CR>/")
