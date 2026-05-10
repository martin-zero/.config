-- 关闭原生模式显示
vim.opt.showmode = false
require("lualine").setup({
	sections = {
		-- 编辑z区显示时间
		lualine_z = {
			{
				"datetime",
				-- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
				style = "%H:%M",
			},
		},
	},
})
