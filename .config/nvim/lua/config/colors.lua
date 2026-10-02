local platform = require("config.platform")
local hl = vim.api.nvim_set_hl
local s = platform.scheme
local n = platform.name
local M = {}

----- Color variables ---------------------------------------------------------
M.cursor = "#EDA356"
M.comment = "#6C6C6C"
M.preprocess = "#D273EC"
M.value = "#E25E70"
M.constant = "#CCA885"
M.char_spec = "#F49F3F"
M.types_def = "#4FC2EC"
M.types_cus = "#DE2F7D"
M.keyword = "#FFCA45"
M.keyword_spec = "#8093DA"
M.func_cus = "#DE97B7"
M.func_def = "#C2FFF7"
M.func_met = "#FFF7C2"
M.normal_text = "#FFFFFF"
M.enum = "#45BF6E"
M.enum_memb = "#85CC96"
M.ll_bg = ({ MAIN = "#282727", OLED = "#121212" })[s]
-------------------------------------------------------------------------------


----- Core editor colors ------------------------------------------------------
hl(0, "Normal", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#161415", OLED = "#000000" })[s], }) -- Normal text
hl(0, "NormalNC", {
    fg = ({ MAIN = "#999999", OLED = "#999999" })[s],
    bg = ({ MAIN = "#1C1A1B", OLED = "#000000" })[s], }) -- Unfocused window
hl(0, "CursorLine", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#282727", OLED = "#282727" })[s], }) -- Cursor line
hl(0, "LineNr", {
    fg = ({ MAIN = "#373737", OLED = "#373737" })[s],
    bg = ({ MAIN = "#1C1A1B", OLED = "#080808" })[s], }) -- Line numbers
hl(0, "Folded", {
    fg = ({ MAIN = "#575757", OLED = "#575757" })[s],
    bg = ({ MAIN = "#1C1A1B", OLED = "#1C1A1B" })[s], }) -- Folded text
hl(0, "Pmenu", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#282727", OLED = "#282727" })[s], }) -- Popup menu
hl(0, "PmenuSel", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#383735", OLED = "#383735" })[s], }) -- Selected popup item
hl(0, "WinSeparator", {
    fg = ({ MAIN = "#575350", OLED = "#252525" })[s],
    bg = ({ MAIN = "#161415", OLED = "#000000" })[s], }) -- Window separator
-------------------------------------------------------------------------------


----- Core floating window ----------------------------------------------------
hl(0, "NormalFloat", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#282727", OLED = "#282727" })[s], }) -- Floating window
hl(0, "FloatBorder", {
    fg = ({ MAIN = "#575350", OLED = "#575350" })[s],
    bg = ({ MAIN = "#282727", OLED = "#282727" })[s], }) -- Floating border
-------------------------------------------------------------------------------


----- CMP autocomplete menu ---------------------------------------------------
hl(0, "CmpItemAbbr", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s], }) -- Normal text
hl(0, "CmpItemKind", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s], }) -- General
hl(0, "CmpItemKindText", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s], }) -- Text
hl(0, "CmpItemKindMethod", {
    fg = ({ MAIN = "#FFF7C2", OLED = "#FFF7C2" })[s], }) -- Method
hl(0, "CmpItemKindFunction", {
    fg = ({ MAIN = "#C2FFF7", OLED = "#C2FFF7" })[s], }) -- Function
hl(0, "CmpItemKindVariable", {
    fg = ({ MAIN = "#4FC2EC", OLED = "#4FC2EC" })[s], }) -- Variable
hl(0, "CmpItemKindClass", {
    fg = ({ MAIN = "#DE2F7D", OLED = "#DE2F7D" })[s], }) -- Class
hl(0, "CmpItemKindValue", {
    fg = ({ MAIN = "#E25E70", OLED = "#E25E70" })[s], }) -- Value
hl(0, "CmpItemKindEnum", {
    fg = ({ MAIN = "#45BF6E", OLED = "#45BF6E" })[s], }) -- Enum
hl(0, "CmpItemKindEnumMember", {
    fg = ({ MAIN = "#85CC96", OLED = "#85CC96" })[s], }) -- Enum member
hl(0, "CmpItemKindKeyword", {
    fg = ({ MAIN = "#FFCA45", OLED = "#FFCA45" })[s], }) -- Keyword
hl(0, "CmpItemKindConstant", {
    fg = ({ MAIN = "#8093DA", OLED = "#8093DA" })[s], }) -- Constant
hl(0, "CmpItemMenu", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s], }) -- Menu
-------------------------------------------------------------------------------


----- Neotree -----------------------------------------------------------------
hl(0, "NeoTreeDirectoryIcon", {
    fg = ({ MAIN = "#87AFD7", OLED = "#87AFD7" })[s], }) -- Directory icon
hl(0, "NeoTreeDirectoryName", {
    fg = ({ MAIN = "#87AFD7", OLED = "#87AFD7" })[s], }) -- Directory name
hl(0, "NeoTreeFileIcon", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s], }) -- File icon
hl(0, "NeoTreeFileName", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s], }) -- File name
hl(0, "NeoTreeCursorLine", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#282727", OLED = "#1A1A1A" })[s], }) -- Cursor line
hl(0, "NeoTreeNormal", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#161415", OLED = "#000000" })[s], }) -- Main window
hl(0, "NeoTreeNormalNC", {
    fg = ({ MAIN = "#999999", OLED = "#999999" })[s],
    bg = ({ MAIN = "#1C1A1B", OLED = "#000000" })[s], }) -- Unfocused window
hl(0, "neotreemodified", {
    fg = ({ MAIN = "#FFBF00", OLED = "#FFBF00" })[s], }) -- Modified file
hl(0, "neotreerootname", {
    fg = ({ MAIN = "#B3C1C9", OLED = "#B3C1C9" })[s], }) -- Root name
hl(0, "neotreeindentmarker", {
    fg = ({ MAIN = "#575350", OLED = "#575350" })[s], }) -- Indent marker
hl(0, "neotreeexpander", {
    fg = ({ MAIN = "#575350", OLED = "#575350" })[s], }) -- Expand/collapse icon
hl(0, "neotreefloatborder", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#282727", OLED = "#282727" })[s], }) -- Floating border
hl(0, "neotreefloatnormal", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#161415", OLED = "#000000" })[s], }) -- Floating window
hl(0, "NeoTreeGitUntracked", {
    fg = ({ MAIN = "#FFCA45", OLED = "#FFCA45" })[s], }) -- Git untracked
hl(0, "NeoTreeGitAdded", {
    fg = ({ MAIN = "#45BF6E", OLED = "#45BF6E" })[s], }) -- Git added
hl(0, "NeoTreeGitUnstaged", {
    fg = ({ MAIN = "#F49F3F", OLED = "#F49F3F" })[s], }) -- Git unstaged
hl(0, "NeoTreeGitStaged", {
    fg = ({ MAIN = "#85CC96", OLED = "#85CC96" })[s], }) -- Git staged
hl(0, "NeoTreeGitModified", {
    fg = ({ MAIN = "#4FC2EC", OLED = "#4FC2EC" })[s], }) -- Git modified
hl(0, "NeoTreeGitRenamed", {
    fg = ({ MAIN = "#D273EC", OLED = "#D273EC" })[s], }) -- Git renamed
hl(0, "NeoTreeGitDeleted", {
    fg = ({ MAIN = "#E25E70", OLED = "#E25E70" })[s], }) -- Git deleted
hl(0, "NeoTreeGitConflict", {
    fg = ({ MAIN = "#DE2F7D", OLED = "#DE2F7D" })[s], }) -- Git conflict
hl(0, "NeoTreeGitIgnored", {
    fg = ({ MAIN = "#6C6C6C", OLED = "#6C6C6C" })[s], }) -- Git ignored
-------------------------------------------------------------------------------


----- BarBar ------------------------------------------------------------------
hl(0, "TabLineSel", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#161415", OLED = "#000000" })[s], }) -- Tab line
hl(0, "BufferCurrent", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#161415", OLED = "#000000" })[s], }) -- Selected tab (middle)
hl(0, "BufferCurrentSign", {
    fg = ({ MAIN = "#161415", OLED = "#000000" })[s],
    bg = ({ MAIN = "#1C1A1B", OLED = "#121212" })[s], }) -- Selected tab (left)
hl(0, "BufferCurrentSignRight", {
    fg = ({ MAIN = "#161415", OLED = "#000000" })[s],
    bg = ({ MAIN = "#1C1A1B", OLED = "#121212" })[s], }) -- Selected tab (right)
hl(0, "BufferInactive", {
    fg = ({ MAIN = "#696562", OLED = "#303030" })[s],
    bg = ({ MAIN = "#262424", OLED = "#000000" })[s], }) -- Inactive tab (middle)
hl(0, "BufferInactiveSign", {
    fg = ({ MAIN = "#1C1A1B", OLED = "#000000" })[s],
    bg = ({ MAIN = "#262424", OLED = "#000000" })[s], }) -- Inactive tab (left)
hl(0, "BufferInactiveSignRight", {
    fg = ({ MAIN = "#1C1A1B", OLED = "#000000" })[s],
    bg = ({ MAIN = "#262424", OLED = "#000000" })[s], }) -- Inactive tab (right)
hl(0, "BufferCurrentIndex", {
    fg = ({ MAIN = "#1C1A1B", OLED = "#1C1A1B" })[s],
    bg = ({ MAIN = "#161415", OLED = "#000000" })[s], }) -- Current index
hl(0, "BufferTabpageFill", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#1C1A1B", OLED = "#121212" })[s], }) -- Space between buffers and tabpage
hl(0, "BufferVisible", {
    fg = ({ MAIN = "#FAF2EB", OLED = "#303030" })[s],
    bg = ({ MAIN = "#302D2D", OLED = "#000000" })[s], }) -- Unfocused tab (middle)
hl(0, "BufferVisibleSign", {
    fg = ({ MAIN = "#302D2D", OLED = "#000000" })[s],
    bg = ({ MAIN = "#1C1A1B", OLED = "#000000" })[s], }) -- Unfocused tab (left)
hl(0, "BufferVisibleSignRight", {
    fg = ({ MAIN = "#302D2D", OLED = "#000000" })[s],
    bg = ({ MAIN = "#1C1A1B", OLED = "#000000" })[s], }) -- Unfocused tab (right)
hl(0, "BufferAlternateSign", {
    fg = ({ MAIN = "#F4F070", OLED = "#F4F070" })[s],
    bg = ({ MAIN = "#FFBF00", OLED = "#FFBF00" })[s], }) -- Alternate sign
hl(0, "BufferAlternateSignRight", {
    fg = ({ MAIN = "#0F8F0F", OLED = "#0F8F0F" })[s],
    bg = ({ MAIN = "#FF0080", OLED = "#FF0080" })[s], }) -- Alternate right sign
hl(0, "BufferTabpages", {
    fg = ({ MAIN = "#000000", OLED = "#000000" })[s],
    bg = ({ MAIN = "#FFFF00", OLED = "#FFFF00" })[s], }) -- Tabpages indicator
hl(0, "BufferTabpagesSep", {
    fg = ({ MAIN = "#FFFFFF", OLED = "#FFFFFF" })[s],
    bg = ({ MAIN = "#FF00FF", OLED = "#FF00FF" })[s], }) -- Tabpages separator
-------------------------------------------------------------------------------


----- C/C++/Python/Lua syntax highlights --------------------------------------

-- Comments --
hl(0, "@comment.c", { fg = M.comment })
hl(0, "@comment.cpp", { fg = M.comment })
hl(0, "@comment.lua", { fg = M.comment })
hl(0, "@comment.python", { fg = M.comment })
hl(0, "@string.documentation.python", { fg = M.comment })
hl(0, "@comment.documentation.lua", { fg = M.comment })

-- Preprocessing --
hl(0, "@keyword.import.c", { fg = M.preprocess })
hl(0, "@keyword.import.cpp", { fg = M.preprocess })
hl(0, "@keyword.import.python", { fg = M.preprocess })
hl(0, "@keyword.directive.c", { fg = M.preprocess })
hl(0, "@keyword.directive.cpp", { fg = M.preprocess })
hl(0, "@keyword.directive.python", { fg = M.preprocess })
hl(0, "@keyword.directive.define.c", { fg = M.preprocess })
hl(0, "@keyword.directive.define.cpp", { fg = M.preprocess })
hl(0, "@attribute.python", { fg = M.preprocess })
hl(0, "@attribute.builtin.python", { fg = M.preprocess })

-- Values --
hl(0, "@number.c", { fg = M.value })
hl(0, "@number.cpp", { fg = M.value })
hl(0, "@number.lua", { fg = M.value })
hl(0, "@number.python", { fg = M.value })
hl(0, "@number.float.python", { fg = M.value })
hl(0, "@character.c", { fg = M.value })
hl(0, "@character.cpp", { fg = M.value })
hl(0, "@character.python", { fg = M.value })
hl(0, "@string.c", { fg = M.value })
hl(0, "@string.cpp", { fg = M.value })
hl(0, "@string.lua", { fg = M.value })
hl(0, "@string.python", { fg = M.value })
hl(0, "@boolean.c", { fg = M.value })
hl(0, "@boolean.cpp", { fg = M.value })
hl(0, "@boolean.lua", { fg = M.value })
hl(0, "@boolean.python", { fg = M.value })
hl(0, "@lsp.type.macro.c", { fg = M.value })
hl(0, "@lsp.type.macro.cpp", { fg = M.value })
hl(0, "@constant.macro.c", { fg = M.value })
hl(0, "@constant.macro.cpp", { fg = M.value })

-- Default types/modifiers --
hl(0, "@type.builtin.c", { fg = M.types_def, bold = true })
hl(0, "@type.builtin.cpp", { fg = M.types_def, bold = true })
hl(0, "@type.builtin.python", { fg = M.types_def, bold = true })
hl(0, "@lsp.type.type.c", { fg = M.types_def, bold = true })
hl(0, "@lsp.type.type.cpp", { fg = M.types_def, bold = true })
hl(0, "@keyword.modifier.c", { fg = M.types_def, bold = true })
hl(0, "@keyword.modifier.cpp", { fg = M.types_def, bold = true })
hl(0, "@keyword.type.c", { fg = M.types_def, bold = true })
hl(0, "@keyword.type.cpp", { fg = M.types_def, bold = true })
hl(0, "@keyword.type.python", { fg = M.types_def, bold = true })
hl(0, "@keyword.function.python", { fg = M.types_def, bold = true })

-- Custom types --
hl(0, "@type.c", { fg = M.types_cus, bold = true })
hl(0, "@type.cpp", { fg = M.types_cus, bold = true })
hl(0, "@type.python", { fg = M.types_cus, bold = true })
hl(0, "@lsp.type.class.c", { fg = M.types_cus, bold = true })
hl(0, "@lsp.type.class.cpp", { fg = M.types_cus, bold = true })
hl(0, "@type.definition.c", { fg = M.types_cus, bold = true })
hl(0, "@type.definition.cpp", { fg = M.types_cus, bold = true })

-- Keywords --
hl(0, "@keyword.repeat.c", { fg = M.keyword, bold = true })
hl(0, "@keyword.repeat.cpp", { fg = M.keyword, bold = true })
hl(0, "@keyword.repeat.python", { fg = M.keyword, bold = true })
hl(0, "@keyword.conditional.c", { fg = M.keyword, bold = true })
hl(0, "@keyword.conditional.cpp", { fg = M.keyword, bold = true })
hl(0, "@keyword.conditional.python", { fg = M.keyword, bold = true })
hl(0, "@keyword.return.c", { fg = M.keyword, bold = true })
hl(0, "@keyword.return.cpp", { fg = M.keyword, bold = true })
hl(0, "@keyword.return.lua", { fg = M.keyword, bold = true })
hl(0, "@keyword.return.python", { fg = M.keyword, bold = true })
hl(0, "@keyword.lua", { fg = M.keyword, bold = true })
hl(0, "@keyword.python", { fg = M.keyword, bold = true })
hl(0, "@keyword.exception.python", { fg = M.keyword, bold = true })
hl(0, "@keyword.operator.python", { fg = M.keyword, bold = true })

-- Functions (custom) --
hl(0, "@function.call.c", { fg = M.func_cus, bold = true })
hl(0, "@function.call.cpp", { fg = M.func_cus, bold = true })
hl(0, "@function.call.lua", { fg = M.func_cus, bold = true })
hl(0, "@function.call.python", { fg = M.func_cus, bold = true })
hl(0, "@lsp.type.function.c", { fg = M.func_cus, bold = true })
hl(0, "@lsp.type.function.cpp", { fg = M.func_cus, bold = true })
hl(0, "@function.lua", { fg = M.func_cus, bold = true })

-- Functions (built-in) --
hl(0, "@function.builtin.lua", { fg = M.func_def, bold = true })
hl(0, "@function.builtin.python", { fg = M.func_def, bold = true })
hl(0, "@constructor.python", { fg = M.func_def, bold = true })

-- Functions (methods) --
hl(0, "@function.method.call.python", { fg = M.func_met })
hl(0, "@function.method.call.lua", { fg = M.func_met })

-- Variables/parameters/etc. --
hl(0, "@variable", { fg = M.normal_text })
hl(0, "@variable.c", { fg = M.normal_text })
hl(0, "@variable.cpp", { fg = M.normal_text })
hl(0, "@variable.lua", { fg = M.normal_text })
hl(0, "@variable.python", { fg = M.normal_text })
hl(0, "@variable.parameter.c", { fg = M.normal_text })
hl(0, "@variable.parameter.cpp", { fg = M.normal_text })
hl(0, "@variable.parameter.python", { fg = M.normal_text })
hl(0, "@lsp.type.property.c", { fg = M.normal_text })
hl(0, "@lsp.type.property.cpp", { fg = M.normal_text })
hl(0, "@property.c", { fg = M.normal_text })
hl(0, "@property.cpp", { fg = M.normal_text })
hl(0, "@property.lua", { fg = M.normal_text })
hl(0, "@operator.c", { fg = M.normal_text })
hl(0, "@operator.cpp", { fg = M.normal_text })
hl(0, "@operator.lua", { fg = M.normal_text })
hl(0, "@operator.python", { fg = M.normal_text })
hl(0, "@_parent.c", { fg = M.normal_text })
hl(0, "@_parent.cpp", { fg = M.normal_text })
hl(0, "@punctuation.bracket.c", { fg = M.normal_text })
hl(0, "@punctuation.bracket.cpp", { fg = M.normal_text })
hl(0, "@punctuation.bracket.lua", { fg = M.normal_text })
hl(0, "@punctuation.bracket.python", { fg = M.normal_text })
hl(0, "@punctuation.special.python", { fg = M.normal_text })
hl(0, "@function.c", { fg = M.normal_text })
hl(0, "@function.cpp", { fg = M.normal_text })
hl(0, "@constructor.lua", { fg = M.normal_text })
hl(0, "@punctuation.delimiter.lua", { fg = M.normal_text })

-- Function declaration --
hl(0, "@function.python", { fg = M.normal_text, bold = true })
hl(0, "@function.method.python", { fg = M.normal_text, bold = true })

-- Constants --
hl(0, "@constant.c", { fg = M.constant })
hl(0, "@constant.cpp", { fg = M.constant })
hl(0, "@constant.builtin.c", { fg = M.constant })
hl(0, "@constant.builtin.cpp", { fg = M.constant })
hl(0, "@constant.builtin.python", { fg = M.constant })
hl(0, "@variable.builtin.python", { fg = M.constant })

-- Special characters --
hl(0, "@string.escape.c", { fg = M.char_spec })
hl(0, "@string.escape.cpp", { fg = M.char_spec })
hl(0, "@string.escape.python", { fg = M.char_spec })

-- Special keywords --
hl(0, "@keyword.operator.c", { fg = M.keyword_spec })
hl(0, "@keyword.operator.cpp", { fg = M.keyword_spec })
hl(0, "@punctuation.special.c", { fg = M.keyword_spec })
hl(0, "@punctuation.special.cpp", { fg = M.keyword_spec })
hl(0, "@module.python", { fg = M.keyword_spec })

-- Enums --
hl(0, "@lsp.type.enum.c", { fg = M.enum, bold = true })
hl(0, "@lsp.type.enum.cpp", { fg = M.enum, bold = true })

-- Enum members --
hl(0, "@lsp.type.enumMember.c", { fg = M.enum_memb })
hl(0, "@lsp.type.enumMember.cpp", { fg = M.enum_memb })

return M
