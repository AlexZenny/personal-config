return {
	{
		"habamax/vim-godot",
        ft = { "gdscript", "gdshader" },
        config = function()
            -- Enable Godot filetype detection and syntax highlighting.
            vim.g.godot_executable = "godot"

            -- Use Godot's dedicated filetype detection.
            vim.filetype.add({
                extension = {
                    gd = "gdscript",
                    gdshader = "gdshader",
                },
            })
        end,
    },
}

