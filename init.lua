local autocmd = vim.api.nvim_create_autocmd

-- vimtex auto compile
autocmd("BufWritePost", {
    pattern = "*.tex",
    command = "VimtexCompile",
})
-- vimtex auto compile 
-- comment if continuous compilation is already working
-- autocmd("BufWritePost", {
--     pattern = "*.tex",
--     command = "VimtexCompile",
-- })
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.softtabstop = 0
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.swapfile = false
vim.o.scrolloff = 8
vim.o.wrap = false

-- vimtex
vim.g.vimtex_view_method = 'sioyek'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.tex_flavor = 'latex'
vim.g.vimtex_quickfix_mode= 0
vim.o.conceallevel = 2
vim.g.tex_conceal= 'abdmg'

-- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
-- vim.api.nvim_set_keymap("i", "<C-H>", 'copilot#Previous()', { silent = true, expr = true })
-- vim.api.nvim_set_keymap("i", "<C-K>", 'copilot#Next()', { silent = true, expr = true })
