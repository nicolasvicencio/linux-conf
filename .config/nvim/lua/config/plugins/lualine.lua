local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local ayu = require("lualine.themes.ayu")

lualine.setup({
	options = {
		theme = ayu,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
