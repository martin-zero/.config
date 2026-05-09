vim.pack.add{
    -- lsp 配置插件
  { src = 'https://github.com/neovim/nvim-lspconfig' },
    -- lsp server管理
  { src = 'https://github.com/williamboman/mason.nvim' },
}

require("mason").setup()
