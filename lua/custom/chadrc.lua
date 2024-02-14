local M = {}

M.ui = {
	theme = "monekai",
	tabufline = {
		enabled = false,
	},
}

M.plugins = "custom.plugins"

M.mappings = require("custom.remap")
M.mappings.toggleterm = require("custom.maps.toggleterm")

return M
