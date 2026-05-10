local cmp = require("blink.cmp")
cmp.build():wait(60000)
cmp.setup({
	keymap = {
		["<Tab>"] = { "accept", "fallback" },
	},
})
