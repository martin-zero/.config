require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- 快速修复
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {
  desc = "Code Action(快速修复)",
})
