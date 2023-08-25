local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.opt.guifont = { "MesloLGS NF", ":h15"}
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.softtabstop = 0
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.swapfile = false
vim.o.scrolloff = 8
vim.o.wrap = false
