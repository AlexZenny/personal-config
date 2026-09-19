return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,

	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").setup()

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "c", "cpp", "python", "lua", "vim", "bash" },
			callback = function()
				vim.treesitter.start()
			end,
		})

-- C/C++ syntax highlights --

	-- Comments --
	vim.api.nvim_set_hl(0, "comm", {fg = "#6C6C6C"})
		vim.api.nvim_set_hl(0, "@comment.c", {link = "comm"})
		vim.api.nvim_set_hl(0, "@comment.cpp", {link = "comm"})
		vim.api.nvim_set_hl(0, "@comment.lua", {link = "comm"})
		vim.api.nvim_set_hl(0, "@comment.python", {link = "comm"})
		vim.api.nvim_set_hl(0, "@string.documentation.python", {link = "comm"})
		vim.api.nvim_set_hl(0, "@comment.documentation.lua", {link = "comm"})

	-- Preprocessing --
	vim.api.nvim_set_hl(0, "pre_dir", {fg = "#D273EC"})
		vim.api.nvim_set_hl(0, "@keyword.import.c", {link = "pre_dir"})
		vim.api.nvim_set_hl(0, "@keyword.import.cpp", {link = "pre_dir"})
		vim.api.nvim_set_hl(0, "@keyword.directive.c", {link = "pre_dir"})
		vim.api.nvim_set_hl(0, "@keyword.directive.cpp", {link = "pre_dir"})
		vim.api.nvim_set_hl(0, "@keyword.directive.define.c", {link = "pre_dir"})
		vim.api.nvim_set_hl(0, "@keyword.directive.define.cpp", {link = "pre_dir"})

	-- Values --
	vim.api.nvim_set_hl(0, "val", {fg = "#E25E70"})
		vim.api.nvim_set_hl(0, "@number.c", {link = "val"})
		vim.api.nvim_set_hl(0, "@number.cpp", {link = "val"})
		vim.api.nvim_set_hl(0, "@number.lua", {link = "val"})
		vim.api.nvim_set_hl(0, "@number.python", {link = "val"})
		vim.api.nvim_set_hl(0, "@character.c", {link = "val"})
		vim.api.nvim_set_hl(0, "@character.cpp", {link = "val"})
		vim.api.nvim_set_hl(0, "@character.python", {link = "val"})
		vim.api.nvim_set_hl(0, "@string.c", {link = "val"})
		vim.api.nvim_set_hl(0, "@string.cpp", {link = "val"})
		vim.api.nvim_set_hl(0, "@string.lua", {link = "val"})
		vim.api.nvim_set_hl(0, "@string.python", {link = "val"})
		vim.api.nvim_set_hl(0, "@boolean.c", {link = "val"})
		vim.api.nvim_set_hl(0, "@boolean.cpp", {link = "val"})
		vim.api.nvim_set_hl(0, "@boolean.lua", {link = "val"})
		vim.api.nvim_set_hl(0, "@boolean.python", {link = "val"})
		vim.api.nvim_set_hl(0, "@lsp.type.macro.c", {link = "val"})
		vim.api.nvim_set_hl(0, "@lsp.type.macro.cpp", {link = "val"})
		vim.api.nvim_set_hl(0, "@constant.macro.c", {link = "val"})
		vim.api.nvim_set_hl(0, "@constant.macro.cpp", {link = "val"})

	-- Default types/modifiers --
	vim.api.nvim_set_hl(0, "d_type", {fg = "#4FC2EC", bold = true})
		vim.api.nvim_set_hl(0, "@type.builtin.c", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@type.builtin.cpp", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@type.builtin.python", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@type.python", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@lsp.type.type.c", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@lsp.type.type.cpp", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@keyword.modifier.c", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@keyword.modifier.cpp", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@keyword.type.c", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@keyword.type.cpp", {link = "d_type"})
		vim.api.nvim_set_hl(0, "@keyword.function.python", {link = "d_type"})

	-- Custom types --
	vim.api.nvim_set_hl(0, "c_type", {fg = "#DE2F7D", bold = true,})
		vim.api.nvim_set_hl(0, "@type.c", {link = "c_type"})
		vim.api.nvim_set_hl(0, "@type.cpp", {link = "c_type"})
		vim.api.nvim_set_hl(0, "@lsp.type.class.c", {link = "c_type"})
		vim.api.nvim_set_hl(0, "@lsp.type.class.cpp", {link = "c_type"})
		vim.api.nvim_set_hl(0, "@type.definition.c", {link = "c_type"})
		vim.api.nvim_set_hl(0, "@type.definition.cpp", {link = "c_type"})

	-- Keywords --
	vim.api.nvim_set_hl(0, "k_word", {fg = "#FFCA45", bold = true})
		vim.api.nvim_set_hl(0, "@keyword.repeat.c", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.repeat.cpp", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.repeat.python", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.conditional.c", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.conditional.cpp", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.conditional.python", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.return.c", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.return.cpp", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.return.lua", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.return.python", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.lua", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.python", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.exception.python", {link = "k_word"})
		vim.api.nvim_set_hl(0, "@keyword.operator.python", {link = "k_word"})

	-- Functions --
	vim.api.nvim_set_hl(0, "func", {fg = "#C2FFF7", bold = true})
		vim.api.nvim_set_hl(0, "@function.call.c", {link = "func"})
		vim.api.nvim_set_hl(0, "@function.call.cpp", {link = "func"})
		vim.api.nvim_set_hl(0, "@function.call.lua", {link = "func"})
		vim.api.nvim_set_hl(0, "@function.call.python", {link = "func"})
		vim.api.nvim_set_hl(0, "@lsp.type.function.c", {link = "func"})
		vim.api.nvim_set_hl(0, "@lsp.type.function.cpp", {link = "func"})
		vim.api.nvim_set_hl(0, "@function.lua", {link = "func"})
		vim.api.nvim_set_hl(0, "@function.python", {link = "func"})

	-- Functions (built-in) --
	vim.api.nvim_set_hl(0, "func_bi", {fg = "#E3C2FF", bold = true})
		vim.api.nvim_set_hl(0, "@function.builtin.lua", {link = "func_bi"})
		vim.api.nvim_set_hl(0, "@function.builtin.python", {link = "func_bi"})

	-- Methods --
	vim.api.nvim_set_hl(0, "method", {fg = "#FFF7C2"})
		vim.api.nvim_set_hl(0, "@function.method.call.python", {link = "method"})

	-- Variables/parameters/etc. --
	vim.api.nvim_set_hl(0, "var", {fg = "#FFFFFF"})
		vim.api.nvim_set_hl(0, "@variable", {link = "var"})
		vim.api.nvim_set_hl(0, "@variable.c", {link = "var"})
		vim.api.nvim_set_hl(0, "@variable.cpp", {link = "var"})
		vim.api.nvim_set_hl(0, "@variable.lua", {link = "var"})
		vim.api.nvim_set_hl(0, "@variable.python", {link = "var"})
		vim.api.nvim_set_hl(0, "@variable.parameter.c", {link = "var"})
		vim.api.nvim_set_hl(0, "@variable.parameter.cpp", {link = "var"})
		vim.api.nvim_set_hl(0, "@variable.parameter.python", {link = "var"})
		vim.api.nvim_set_hl(0, "@lsp.type.property.c", {link = "var"})
		vim.api.nvim_set_hl(0, "@lsp.type.property.cpp", {link = "var"})
		vim.api.nvim_set_hl(0, "@property.c", {link = "var"})
		vim.api.nvim_set_hl(0, "@property.cpp", {link = "var"})
		vim.api.nvim_set_hl(0, "@property.lua", {link = "var"})
		vim.api.nvim_set_hl(0, "@operator.c", {link = "var"})
		vim.api.nvim_set_hl(0, "@operator.cpp", {link = "var"})
		vim.api.nvim_set_hl(0, "@operator.lua", {link = "var"})
		vim.api.nvim_set_hl(0, "@operator.python", {link = "var"})
		vim.api.nvim_set_hl(0, "@_parent.c", {link = "var"})
		vim.api.nvim_set_hl(0, "@_parent.cpp", {link = "var"})
		vim.api.nvim_set_hl(0, "@punctuation.bracket.c", {link = "var"})
		vim.api.nvim_set_hl(0, "@punctuation.bracket.cpp", {link = "var"})
		vim.api.nvim_set_hl(0, "@punctuation.bracket.lua", {link = "var"})
		vim.api.nvim_set_hl(0, "@punctuation.bracket.python", {link = "var"})
		vim.api.nvim_set_hl(0, "@function.c", {link = "var"})
		vim.api.nvim_set_hl(0, "@function.cpp", {link = "var"})
		vim.api.nvim_set_hl(0, "@constructor.lua", {link = "var"})
		vim.api.nvim_set_hl(0, "@punctuation.delimiter.lua", {link = "var"})

	-- Constants --
	vim.api.nvim_set_hl(0, "const", {fg = "#CCA885"})
		vim.api.nvim_set_hl(0, "@constant.c", {link = "const"})
		vim.api.nvim_set_hl(0, "@constant.cpp", {link = "const"})
		vim.api.nvim_set_hl(0, "@constant.builtin.c", {link = "const"})
		vim.api.nvim_set_hl(0, "@constant.builtin.cpp", {link = "const"})

	-- Special characters --
	vim.api.nvim_set_hl(0, "spec_char", {fg = "#F49F3F"})
		vim.api.nvim_set_hl(0, "@string.escape.c", {link = "spec_char"})
		vim.api.nvim_set_hl(0, "@string.escape.cpp", {link = "spec_char"})
		vim.api.nvim_set_hl(0, "@string.escape.python", {link = "spec_char"})

	-- Special keywords --
	vim.api.nvim_set_hl(0, "spec_key", {fg = "#8093DA"})
		vim.api.nvim_set_hl(0, "@keyword.operator.c", {link = "spec_key"})
		vim.api.nvim_set_hl(0, "@keyword.operator.cpp", {link = "spec_key"})
		vim.api.nvim_set_hl(0, "@punctuation.special.c", {link = "spec_key"})
		vim.api.nvim_set_hl(0, "@punctuation.special.cpp", {link = "spec_key"})

	-- Enumerations --
	vim.api.nvim_set_hl(0, "enum", {fg = "#45BF6E", bold = true})
		vim.api.nvim_set_hl(0, "@lsp.type.enum.c", {link = "enum"})
		vim.api.nvim_set_hl(0, "@lsp.type.enum.cpp", {link = "enum"})

	-- Enum members --
	vim.api.nvim_set_hl(0, "enum_mem", {fg = "#85CC96"})
		vim.api.nvim_set_hl(0, "@lsp.type.enumMember.c", {link = "enum_mem"})
		vim.api.nvim_set_hl(0, "@lsp.type.enumMember.cpp", {link = "enum_mem"})

	end
}
