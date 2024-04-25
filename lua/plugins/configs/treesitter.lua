local options = {
	ensure_installed = { "lua", "css", "scss", "sass", "html", "js", "json", "tsx", "jsx" },

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
		filetypes = { "html", "xml", "jsx", "tsx" },
	},

	indent = { enable = true },
}

return options
