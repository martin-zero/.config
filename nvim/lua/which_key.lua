local wk = require "which-key"

wk.register({
  g = {
    d = {
      name = "跳转",
      d = { vim.lsp.buf.definition, "定义" },
      r = { vim.lsp.buf.references, "引用" },
      i = { vim.lsp.buf.implementation, "实现" },
      t = { vim.lsp.buf.type_definition, "类型定义" },
    },
  },
}, { prefix = "" })
