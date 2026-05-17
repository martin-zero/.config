return {
	{
		"nvim-lualine/lualine.nvim",

		event = "VeryLazy",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		opts = {
			sections = {
				lualine_z = {
					{
						"datetime",
						style = "%H:%M",
					},
				},
			},
		},

		config = function(_, opts)
			-- 关闭原生模式显示
			vim.opt.showmode = false

			require("lualine").setup(opts)
		end,
	},
}
