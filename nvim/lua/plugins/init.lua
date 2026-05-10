vim.pack.add({
	-- lsp 配置插件
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	-- lsp server管理
	{ src = "https://github.com/williamboman/mason.nvim" },
	-- 格式化插件
	{ src = "https://github.com/stevearc/conform.nvim" },
	-- 状态栏
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	-- 文件图标
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	-- 成对符号
	{ src = "https://github.com/windwp/nvim-autopairs" },
	-- 便捷括号包裹
	{ src = "https://github.com/kylechui/nvim-surround", version = vim.version.range("4.x") },
	-- catppuccin 主题
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	-- fzf模糊搜索
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	-- 高亮todo等注释
	{ src = "https://github.com/folke/todo-comments.nvim" },
	-- 快速跳转
	{ src = "https://github.com/folke/flash.nvim" },
	-- git标识
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	-- lazygit
	{ src = "https://github.com/kdheepak/lazygit.nvim" },
})

require("plugins.mason")
require("plugins.conform")
require("plugins.lualine")
require("plugins.nvim-autopairs")
require("plugins.nvim-surround")
require("plugins.theme")
require("plugins.fzf-lua")
require("plugins.todo-comments")
require("plugins.flash")
require("plugins.lazygit")
