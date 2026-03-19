local wezterm = require("wezterm")
local config = {
	-- 边框大小
	window_padding = {
		left = 5,
		right = 1,
		top = 0,
		bottom = 0,
	},
	-- 终端高度
	initial_rows = 44,
	-- 终端宽度
	initial_cols = 175,
	-- 主题
	color_scheme = "Catppuccin Macchiato",
	-- 字体
	-- font = wezterm.font("Google Sans Code"),
	font = wezterm.font("JetBrains Mono"),
	-- 字体大小
	font_size = 13.5,
	-- 列间距
	cell_width = 1.05,
	-- 行间距
	line_height = 1.05,
	-- 禁用标签栏
	enable_tab_bar = true,
	-- 禁用系统样式
	use_fancy_tab_bar = false,
	-- 底部标签栏
	tab_bar_at_bottom = true,
	-- 只有一个标签栏时隐藏标签栏
	hide_tab_bar_if_only_one_tab = true,
}

return config
