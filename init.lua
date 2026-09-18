-- Requirements ----------------------------------------------------
local platform = require("config.platform")
require("config.lazy")
require("config.keymaps")
--------------------------------------------------------------------


-- 42 header -------------------------------------------------------
vim.g.user42 = "azieniuk"
vim.g.mail42 = "azieniuk@student.42warsaw.pl"
--------------------------------------------------------------------


-- Folds -----------------------------------------------------------
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldcolumn = "0"
vim.opt.fillchars = {
    eob = " ",
    fold = " ",
    foldopen = "▾",
    foldclose = "▸",
    foldsep = " ",
}
vim.opt.foldtext = "v:lua.MyFoldText"
function MyFoldText()
    local lines = vim.v.foldend - vim.v.foldstart + 1
    return "▸ " .. lines .. " lines"
end
vim.api.nvim_create_autocmd("BufWinLeave", {
    pattern = "*",
    callback = function()
        if vim.bo.buftype == "" and vim.fn.expand("%:p") ~= "" then
            vim.cmd("mkview")
        end
    end,
})
vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = "*",
    callback = function()
        if vim.bo.buftype == "" and vim.fn.expand("%:p") ~= "" then
            vim.cmd("silent! loadview")
        end
    end,
})
---------------------------------------------------------------------


-- Tab behaviour ----------------------------------------------------
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
---------------------------------------------------------------------


-- Clipboard --------------------------------------------------------
local clipboard = platform.clipboard[platform.name]

if clipboard then
    vim.g.clipboard = clipboard
end

vim.opt.clipboard = ""

vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<C-v>", '"+p')
vim.keymap.set("i", "<C-v>", '<C-r>+')
---------------------------------------------------------------------


-- Misc -------------------------------------------------------------
vim.opt.termguicolors = true 
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.fillchars:append({eob = " ",})
vim.cmd("highlight Normal guibg=NONE")
vim.cmd("highlight NormalNC guibg=NONE")

vim.keymap.set("c", "q", function()
    return "qa"
end, { expr = true })
---------------------------------------------------------------------


--------------- UI colors -------------------------------------------------------------------------------------------------
-- Editor
vim.api.nvim_set_hl(0, "Normal", { fg = "#FAF2EB", bg = "#161415", }) -- Normal text
vim.api.nvim_set_hl(0, "NormalNC", { fg = "#999999", bg = "#1C1A1B", }) -- Unfocused window
vim.api.nvim_set_hl(0, "CursorLine", { fg = "#FAF2EB", bg = "#282727", }) -- Cursor line
vim.api.nvim_set_hl(0, "LineNr", { fg = "#373737", bg = "#1C1A1B", }) -- Line numbers
vim.api.nvim_set_hl(0, "Folded", { fg = "#575757", bg = "#1C1A1B", }) -- Folded text
vim.api.nvim_set_hl(0, "Pmenu", { fg = "#FAF2EB", bg = "#282727", }) -- Popup menu
vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#FAF2EB", bg = "#383735", }) -- Selected popup item
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#575350", bg = "#161415", }) -- Window separator

-- Neotree
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#87AFD7", }) -- Directory icon --
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#87AFD7", }) -- Directory name --
vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = "#FAF2EB", }) -- File icon --
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#FAF2EB", }) -- file name --
vim.api.nvim_set_hl(0, "neotreecursorline", { bg = "#282727", }) -- cursor line --
vim.api.nvim_set_hl(0, "neotreenormal", { bg = "#161415", }) -- main window --
vim.api.nvim_set_hl(0, "neotreenormalnc", { bg = "#1c1a1b", }) -- unfocused window --
vim.api.nvim_set_hl(0, "neotreemodified", { fg = "#ffbf00", }) -- modified file --
vim.api.nvim_set_hl(0, "neotreerootname", { fg = "#b3c1c9", }) -- root name --
vim.api.nvim_set_hl(0, "neotreeindentmarker", { fg = "#575350", }) -- indent marker --
vim.api.nvim_set_hl(0, "neotreeexpander", { fg = "#575350", }) -- expand/collapse icon --
vim.api.nvim_set_hl(0, "neotreefloatborder", { fg = "#faf2eb", bg = "#282727", }) -- floating border --
vim.api.nvim_set_hl(0, "neotreefloatnormal", { bg = "#161415", }) -- floating window --
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#FFCA45", }) -- Git untracked
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#45BF6E", }) -- Git added
vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = "#F49F3F", }) -- Git unstaged
vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = "#85CC96", }) -- Git staged
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#4FC2EC", }) -- Git modified
vim.api.nvim_set_hl(0, "NeoTreeGitRenamed", { fg = "#D273EC", }) -- Git renamed
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#E25E70", }) -- Git deleted
vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = "#DE2F7D", }) -- Git conflict
vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = "#6C6C6C", }) -- Git ignored

-- barbar
vim.api.nvim_set_hl(0, "tablinesel", { fg = "#faf2eb", bg = "#161415", }) -- selected tab (middle) --
vim.api.nvim_set_hl(0, "buffercurrent", { fg = "#faf2eb", bg = "#161415", }) -- selected tab (left) --
vim.api.nvim_set_hl(0, "buffercurrentsign", { fg = "#161415", bg = "#1c1a1b", }) -- selected tab (left) --
vim.api.nvim_set_hl(0, "buffercurrentsignright", { fg = "#161415", bg = "#1c1a1b", }) -- selected tab (right) --

-- vim.api.nvim_set_hl(0, "tabline", { fg = "#696562", bg = "#334f31", }) -- inactive tab (middle) --
vim.api.nvim_set_hl(0, "bufferinactive", { fg = "#696562", bg = "#262424", }) -- Inactive tab (left) --
vim.api.nvim_set_hl(0, "BufferInactiveSign", { fg = "#1C1A1B", bg = "#262424", }) -- Inactive tab (left) --
vim.api.nvim_set_hl(0, "BufferInactiveSignRight", { fg = "#1C1A1B", bg = "#262424", }) -- Inactive tab (right) --

-- vim.api.nvim_set_hl(0, "TabLineFill", { fg = "#FAF2EB", bg = "#14F213", }) -- Empty tab line --
vim.api.nvim_set_hl(0, "BufferCurrentIndex", { fg = "#1C1A1B", bg = "#161415", }) -- Current index --
vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "#1C1A1B", }) -- Space between buffers and tabpage --


vim.api.nvim_set_hl(0, "BufferVisible", { fg = "#FAF2EB", bg = "#302D2D", }) -- Visible sign
vim.api.nvim_set_hl(0, "BufferVisibleSign", { fg = "#302D2D", bg = "#1C1A1B", }) -- Visible left sign --
vim.api.nvim_set_hl(0, "BufferVisibleSignRight", { fg = "#302D2D", bg = "#1C1A1B", }) -- Visible right sign --

vim.api.nvim_set_hl(0, "BufferAlternateSign", { fg = "#F4F070", bg = "#FFBF00", }) -- Alternate sign --
vim.api.nvim_set_hl(0, "BufferAlternateSignRight", { fg = "#0F8F0F", bg = "#FF0080", }) -- Alternate right sign --

vim.api.nvim_set_hl(0, "BufferTabpages", { fg = "#000000", bg = "#FFFF00", }) -- Tabpages indicator --
vim.api.nvim_set_hl(0, "BufferTabpagesSep", { fg = "#FFFFFF", bg = "#FF00FF", }) -- Tabpages separator --
-----------------------------------------------------------------------------------------------------------------------------
