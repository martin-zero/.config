-- 开启ui2
require("vim._core.ui2").enable({})
-- 快捷键配置
require("config.keymaps")
-- 插件配置
require("config.lazy")
-- 基础配置
require("config.basic")
-- lsp配置
require("config.lsp")
