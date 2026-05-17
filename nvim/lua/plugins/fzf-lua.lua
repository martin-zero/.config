return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },

		---@module "fzf-lua"
		---@type fzf-lua.Config|{}
		---@diagnostic disable: missing-fields
		opts = {
			winopts = {
				preview = {
					layout = "vertical",
				},
			},
		},
		---@diagnostic enable: missing-fields
	},
}
