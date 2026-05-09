vim.pack.add{
    -- lsp 配置插件
  { src = 'https://github.com/neovim/nvim-lspconfig' },
    -- lsp server管理
  { src = 'https://github.com/williamboman/mason.nvim' },
    -- 状态栏
  { src = 'https://github.com/nvim-lualine/lualine.nvim'},
  { src = 'https://github.com/nvim-tree/nvim-web-devicons'},
}

require("mason").setup()
require("plugins/lspconfig")
-- require("plugins/lualine")
