local colors = require("config.colors")

return {
	"sphamba/smear-cursor.nvim",
	event = "VeryLazy",
	opts = {
		-- "Faster" preset from the README
		stiffness = 0.8,
		trailing_stiffness = 0.5,
		distance_stop_animating = 0.5,
		cursor_color = colors.cursor,
	},
}
