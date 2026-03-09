return {
  {
    "kawre/leetcode.nvim",
    dependencies = {
      -- include a picker of your choice, see picker section for more details
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      -- configuration goes here
      lang = "cpp",
      cn = { -- leetcode.cn
        enabled = true, ---@type boolean
        translator = true, ---@type boolean
        translate_problems = true, ---@type boolean
      },
      -- storage = {
      --   home = vim.fn.stdpath("data") .. "/leetcode",
      --   cache = vim.fn.stdpath("cache") .. "$HOME/Codes/leetcode",
      -- },
    },
  },
}
