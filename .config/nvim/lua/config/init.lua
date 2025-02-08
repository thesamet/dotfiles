require("config.lazy")

vim.opt.termguicolors = true
require("bufferline").setup({})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.colorcolumn = "100"
vim.opt.ruler = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.signcolumn = "number"

vim.keymap.set("n", "<left>", ":bp<CR>", { silent = true })
vim.keymap.set("n", "<right>", ":bn<CR>", { silent = true })
vim.keymap.set("n", ",,", ":wincmd w<CR>", { silent = true })
vim.keymap.set("n", ",.", ":wincmd W<CR>", { silent = true })
vim.keymap.set("c", "<C-D>", "<C-r>=expand('%:h')<CR>/")
vim.keymap.set("n", ",n", function()
	local enabled = not vim.lsp.inlay_hint.is_enabled({})
	vim.lsp.inlay_hint.enable(enabled, { 0 })
	vim.notify("Inlay hints: " .. (enabled and " on" or "off"))
end, { buffer = 0, desc = "Toggle inlay hints" })

if vim.g.neovide then
	vim.keymap.set("n", "<C-s>", ":w<CR>") -- Save
	vim.keymap.set("v", "<C-c>", '"+y') -- Copy
	vim.keymap.set("n", "<C-S-v>", '"+P') -- Paste normal mode
	vim.keymap.set("v", "<C-S-v>", '"+P') -- Paste visual mode
	vim.keymap.set("c", "<C-S-v>", "<C-R>+") -- Paste command mode
	vim.keymap.set("i", "<C-S-v>", '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
-- vim.api.nvim_set_keymap("", "<C-v>", "+p<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("!", "<C-v>", "<C-R>+", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("t", "<C-v>", "<C-R>+", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<C-v>", "<C-R>+", { noremap = true, silent = true })
