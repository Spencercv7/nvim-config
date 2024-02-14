-- Function to open a new tmux pane to the right and launch nvim
local M = {}

M.abc = {
	n = {
		-- show current file in tree
		["<leader>b"] = { "<cmd> NvimTreeFindFileToggle <CR>" },
		["<leader>w"] = { "<cmd> NvimTreeFindFileToggle <CR>" },

		-- Delete Remaps
		-- ["dd"] = { "_dd" },
		-- ["d"] = { "_d" },
		-- center when jumping whitespace
		["{"] = { "{zz" },
		["}"] = { "}zz" },

		-- find and replace
		["<leader>s"] = { ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>" },

		-- show projects
		["<leader>pa"] = { ":lua require'telescope'.extensions.projects.projects{}<Cr>" },

		-- undo and redo
		["u"] = { "<cmd>undo<CR>" },
		["U"] = { "<cmd>redo<CR>" },

		-- paste from clipboard
		["<leader>P"] = { "+p" },

		-- yank to clipboard
		["<leader>y"] = { "+y" },

		["<leader>K"] = {
			function()
				vim.lsp.buf.hover()
			end,
		},

		["<leader>J"] = {
			function()
				require("").mapping.complete()
			end,
		},

		-- Copy current file path
		["<leader>cp"] = { ":lua vim.fn.setreg('+', vim.fn.expand('%:p'))<CR>" },

		-- Start a new tmux pane to the right with the same root dir.
		["<leader>q"] = { ":lua open_workspace()<CR>" },

		-- Harpoon
		["<leader>a"] = {
			function()
				local harpoon = require("harpoon")
				harpoon:list():append()
			end,
		},
		["<C-e>"] = {
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
		},
		-- Toggle previous & next buffers stored within Harpoon list
		["<leader>k"] = {
			function()
				local harpoon = require("harpoon")
				harpoon:list():prev()
			end,
		},
		["<leader>j"] = {
			function()
				local harpoon = require("harpoon")
				harpoon:list():next()
			end,
		},
	},
	v = {
		-- move selected lines up and down.
		["J"] = { ":m '>+1<CR>gv=gv" },
		["K"] = { ":m '<-2<CR>gv=gv" },

		-- paste from clipboard
		["<leader>P"] = { "+p" },

		-- yank to clipboard
		["<leader>y"] = { "+y" },
	},
}

return M
