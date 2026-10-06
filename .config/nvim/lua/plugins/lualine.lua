local c = require("config.colors")

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local my_theme = {
			normal = {
				a = { fg = c.ll_bg, bg = c.cursor, gui = "bold" },
				b = { fg = c.ll_bg, bg = c.comment },
				c = { fg = c.normal_text, bg = c.ll_bg },
			},
            insert = {
                a = { fg = c.ll_bg, bg = c.enum_memb, gui = "bold" },
			},
			visual = {
				a = { fg = c.ll_bg, bg = c.normal_text, gui = "bold" },
			},
            replace = {
                a = { fg = c.ll_bg, bg = c.types_cus, gui = "bold" },
			},
            command = {
				a = { fg = c.ll_bg, bg = c.func_def, gui = "bold" },
			},
            terminal = {
                a = { fg = c.ll_bg, bg = c.enum, gui = "bold" },
            },
            inactive = {
                a = { fg = c.comment, bg = c.ll_bg, gui = "bold" },
                b = { fg = c.comment, bg = c.ll_bg },
                c = { fg = c.comment, bg = c.ll_bg },
            },
        }

	local function cursor_info()
		local row, col = unpack(vim.api.nvim_win_get_cursor(0))
		return string.format("Ln %d, Col %d", row, col + 1)
	end

	require("lualine").setup({
		options = {
			theme = my_theme,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			globalstatus = true,

			disabled_filetypes = {
					statusline = { "dashboard", "alpha", "starter" },
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff" },

			lualine_c = {
				{
					"filename",
					path = 1,
				},
			},
			lualine_x = { "diagnostics" },
			lualine_y = {},
			lualine_z = { cursor_info },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { cursor_info },
			lualine_y = {},
			lualine_z = {},
		},
	})
end,
}
