local prettier = require("prettier")

prettier.setup({
	bin = "prettierd",
	filetypes = {
		"lua",
		"css",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"json",
	},
})
