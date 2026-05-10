vim.pack.add({
	-- lsp 配置插件
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	-- lsp server管理
	{ src = "https://github.com/williamboman/mason.nvim" },
	-- 格式化插件
	{ src = "https://github.com/stevearc/conform.nvim" },
	-- 状态栏
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	-- 成对符号
	{ src = "https://github.com/windwp/nvim-autopairs" },
	-- 便捷括号包裹
	{ src = "https://github.com/kylechui/nvim-surround", version = vim.version.range("4.x") },
	-- catppuccin 主题
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
})

require("plugins.mason")
require("plugins.conform")
require("plugins.lualine")
require("plugins.nvim-autopairs")
require("plugins.nvim-surround")
require("plugins.theme")
