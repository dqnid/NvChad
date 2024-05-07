local commander = require("commander")

commander.add({
	{
		desc = "Search inside current buffer",
		cmd = "<CMD>Telescope current_buffer_fuzzy_find<CR>",
		keys = { "n", "<leader>fl" },
	},
	{
		-- You can specify multiple keys for the same cmd ...
		desc = "Show document symbols",
		cmd = "<CMD>Telescope lsp_document_symbols<CR>",
		keys = {
			{ "n", "<leader>ss", { noremap = true } },
			{ "n", "<leader>ssd", { noremap = true } },
		},
	},
	{
		-- You can pass in a key sequences as if you would type them in nvim
		desc = "My favorite key sequence",
		cmd = "A  -- Add a comment at the end of a line",
		keys = { "n", "<leader>Ac" },
	},
	{
		-- You can also pass in a lua functions as cmd
		-- NOTE: binding lua funciton to a keymap requires nvim >= 0.7
		desc = "Run lua function",
		cmd = function()
			print("ANONYMOUS LUA FUNCTION")
		end,
		keys = { "n", "<leader>alf" },
	},
	{
		-- If no cmd is specified, then this entry will be ignored
		desc = "lsp run linter",
		keys = { "n", "<leader>sf" },
	},
})

return commander
