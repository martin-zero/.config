vim.api.nvim_create_autocmd("InsertEnter", {
	once = true,
	callback = function()
		-- autopairs
		require("nvim-autopairs").setup()
		-- surround
		require("nvim-surround")
	end,
})
