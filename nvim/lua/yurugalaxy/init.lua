require("yurugalaxy.package")
require("yurugalaxy.set")


local highlight = {
	"RainbowRed",
	"RainbowYellow",
	"RainbowBlue",
	"RainbowCyan",
	"RainbowViolet",
}

require("ibl").setup()
require("oil").setup()
require("mini.pick").setup()
require("which-key").add({
	{ "h", hidden = true },
	{ "j", hidden = true },
	{ "k", hidden = true },
	{ "l", hidden = true },
})

vim.lsp.enable({ "lua_ls", "html", "cmake", "eslint", "cssls", "java_language_server", "clangd"})
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			}
		}
	}
})
