require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- 快速修复
map("n", "<leader>ca", vim.lsp.buf.code_action, {
  desc = "Code Action(快速修复)",
})

map("n", "<S-l>", ":bnext<CR>", { silent = true })
map("n", "<S-h>", ":bprevious<CR>", { silent = true })

-- :T快速翻译
vim.api.nvim_create_user_command("T", function(opts)
  local text = ""

  if opts.range == 2 then
    -- Visual 模式选中的范围
    local s = vim.fn.getpos "'<"
    local e = vim.fn.getpos "'>"
    if s[2] > e[2] or (s[2] == e[2] and s[3] > e[3]) then
      s, e = e, s
    end
    local t = vim.api.nvim_buf_get_text(0, s[2] - 1, s[3] - 1, e[2] - 1, e[3], {})
    text = table.concat(t, "\n")
  else
    -- Normal 模式
    text = opts.args ~= "" and opts.args or vim.fn.expand "<cword>"
  end

  local output = vim.fn.system("trans " .. vim.fn.shellescape(text))
  print(output:gsub("\27%[[0-9;]*[mK]", ""))
end, { nargs = "*", range = true })
