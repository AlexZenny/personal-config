return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,

	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").setup()

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "c", "cpp", "python", "lua", "vim", "bash", "gdscript", "godot_resource", "gdshader" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end
}
