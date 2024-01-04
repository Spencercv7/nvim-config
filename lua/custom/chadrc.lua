local M = {}

M.ui = { theme = "monekai" }

M.plugins = "custom.plugins"

M.mappings = require "custom.remap"
M.mappings.toggleterm = require("custom.maps.toggleterm")

return M
