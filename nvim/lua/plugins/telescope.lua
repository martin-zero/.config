return {
	{
		"nvim-telescope/telescope.nvim",

		cmd = "Telescope",

		keys = {
			{
				"<leader><leader>",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = "查找文件",
			},
		},

		dependencies = {
			"nvim-lua/plenary.nvim",

			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},

		opts = {},
	},
}
