return {
	{
		"nvim-lua/plenary.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		depndencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup()
			local builtin = require("telescope.builtin")
			--vim.keymap.set("n", "<Leader>pp", builtin.planets, {})
			vim.keymap.set("n", "<Leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<Leader>gs", builtin.grep_string, {})
			vim.keymap.set("n", "<Leader>lg", builtin.live_grep, {})
			vim.keymap.set("n", "<Leader>mp", builtin.man_pages, {})
			vim.keymap.set("n", "<Leader>cb", builtin.current_buffer_fuzzy_find, {})
		end,
	},
}

