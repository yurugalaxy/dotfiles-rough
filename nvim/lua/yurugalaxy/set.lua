--Stolen from Sylvan
vim.o.nu = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.wrap = false
vim.o.swapfile = false 
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.g.mapleader = " "

--Keybinds
vim.keymap.set('n', '<leader>o', ':source<CR>', { desc = "Source" })
vim.keymap.set('n', '<leader>w', ':write<CR>', { desc = "Write" })
vim.keymap.set('n', '<leader>q', ':quit<CR>', { desc = "Quit" })
vim.keymap.set('n', '<leader>/', 'gcc', { remap = true, desc = "Comment" })
vim.keymap.set('v', '<leader>/', 'gc', { remap = true, desc = "Comment" })

--Package Keymaps
--Oil
vim.keymap.set('n', '<leader>f', ':Oil<CR>', { desc = "Files" })

--LSP
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = "Format" })

--Colors
vim.cmd("let g:onedark_terminal_italics = 1")
vim.cmd("let g:airline_theme = 'onedark'")
vim.cmd("colorscheme onedark")
