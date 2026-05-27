return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  -- flash代码跳转
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "x", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },

  -- AI代码补全
  {
    "monkoose/neocodeium",
    event = "VeryLazy",
    config = function()
      local neocodeium = require "neocodeium"
      neocodeium.setup()
      -- 接受全部补全
      vim.keymap.set("i", "<A-f>", function()
        require("neocodeium").accept()
      end)
      -- 接受一个单词
      vim.keymap.set("i", "<A-w>", function()
        require("neocodeium").accept_word()
      end)
      -- 接受一行
      vim.keymap.set("i", "<A-a>", function()
        require("neocodeium").accept_line()
      end)
      -- 上一个补全
      vim.keymap.set("i", "<A-e>", function()
        require("neocodeium").cycle_or_complete()
      end)
      -- 下一个补全
      vim.keymap.set("i", "<A-r>", function()
        require("neocodeium").cycle_or_complete(-1)
      end)
      -- 清除
      vim.keymap.set("i", "<A-c>", function()
        require("neocodeium").clear()
      end)
    end,
  },
}
