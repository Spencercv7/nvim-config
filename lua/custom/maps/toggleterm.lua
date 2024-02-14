local M = {}

M = {
  n = {
    ["<leader>gh"] = {
      function ()
        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new { cmd = "lazygit", hidden = true }
        lazygit:toggle()
      end
    }
  },
}

return M
