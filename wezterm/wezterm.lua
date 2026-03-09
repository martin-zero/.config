local wezterm = require("wezterm")
local config = {
	-- 边框大小
	window_padding = {
		left = 1,
		right = 1,
		top = 0,
		bottom = 0,
	},
	-- 终端高度
	initial_rows = 60,
	-- 终端宽度
	initial_cols = 180,
	-- 主题颜色
	color_scheme = "Catppuccin Macchiato",
	-- 字体
	font = wezterm.font("Google Sans Code"),
	-- 字体大小
	font_size = 13,
	-- 禁用标签栏
	enable_tab_bar = true,
	-- 禁用系统样式
	use_fancy_tab_bar = false,
	-- 底部标签栏
	tab_bar_at_bottom = true,
}

return config
