return {
	"Mathijs-Bakker/godotdev.nvim",

	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
		"nvim-treesitter/nvim-treesitter",
	},

	config = function()
		require("godotdev").setup({
			godot_path = "godot",
			formatter = "gdscript-formatter",
		})
	end,
}

