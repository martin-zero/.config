require('lualine').setup{
    options = { theme = 'ayu_dark' },
    sections = {
	-- 编辑z区显示时间
	lualine_z = {
		 {
	      'datetime',
	      -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
	      style = '%H:%M'
	    }
	}
    }
}
