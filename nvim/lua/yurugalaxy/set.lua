--Globals
vim.g.mapleader = " "
vim.g.have_nerd_font = true

--UI
vim.o.termguicolors = true
vim.o.winborder = "rounded"
vim.o.number = true
vim.o.relativenumber = true
vim.o.swapfile = false
vim.o.signcolumn = "yes"
vim.o.scrolloff = 10
vim.o.colorcolumn = "80"

--Text
vim.o.wrap = false
vim.o.textwidth = 80

--Tabs and Indentation
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

--Completion
vim.o.completeopt = "menu,menuone,noselect"
vim.o.winborder = "rounded"

--Keybinds
vim.keymap.set('n', '<leader>o', ':source<CR>', { desc = "Source" })
vim.keymap.set('n', '<leader>w', ':write<CR>', { desc = "Write" })
vim.keymap.set('n', '<leader>q', ':quit<CR>', { desc = "Quit" })
vim.keymap.set('i', '<C-Enter>', '<C-n>', { desc = "Autocomp" })
vim.keymap.set('i', '<C-Space>', '<C-X><C-o>', { desc = "Autocomp" })
vim.keymap.set('n', '<leader>/', 'gcc', { remap = true, desc = "Comment" })
vim.keymap.set('v', '<leader>/', 'gc', { remap = true, desc = "Comment" })

--Terminal
vim.keymap.set('n', '<leader>t', ':bel term<CR> :startinsert<CR>', { desc = "Terminal HSplit" })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

--Package Keymaps
--Oil
vim.keymap.set('n', '<leader>f', ':Oil --float<CR>', { desc = "Files" })

--LivePreview
vim.keymap.set('n', '<leader>i', ':LivePreview start<CR>', { desc = "Live Preview" })

--LSP
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = "Format" })

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
-- vim.cmd("set completeopt+=noselect")

--Colors
vim.cmd("let g:onedark_terminal_italics = 1")
vim.cmd("let g:airline_theme = 'onedark'")
vim.cmd("colorscheme onedark")
