-- 显示行号
vim.opt.number = true
-- 相对行号
vim.opt.relativenumber = true
-- 高亮光标所在行
vim.opt.cursorline = true
-- 缩进宽度
vim.opt.shiftwidth = 4
-- tab显示宽度
vim.opt.tabstop = 4
-- 不自动换行
vim.opt.wrap = false
-- 窗口边框
vim.opt.winborder = "rounded"
-- 使用系统剪切板
vim.opt.clipboard = "unnamedplus"
-- 搜索忽略大小写
vim.opt.ignorecase = true
-- 保存修改历史(退出重进还可以撤销上一步)
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.local/state/nvim/undo")
-- 设置主题
vim.cmd.colorscheme("catppuccin")
-- 上下保留5行缓冲区
vim.opt.scrolloff = 5
