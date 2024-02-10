local null_ls = require("null-ls")

local b = null_ls.builtins

local sources = {

	-- webdev stuff
	-- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
	-- b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "jsx", "tsx", "js", "ts" } }, -- so prettier works only on these filetypes
	b.formatting.prettier,

	-- Lua
	b.formatting.stylua,

	-- cpp
	b.formatting.clang_format,
}

null_ls.setup({
	debug = true,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format()
				end,
			})
		end
	end,
	sources = sources,
})
