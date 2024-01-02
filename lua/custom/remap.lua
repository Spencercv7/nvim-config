local M = {}

-- In order to disable a default keymap, use
-- M.disabled = {
--  n = {
--      ["<leader>h"] = "",
--      ["<C-a>"] = ""
--  }
--}
--
---- Your custom mappings
--M.abc = {
--  n = {
--     ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
--     ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"}
--  },
--
--  i = {
--     ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
--    -- ...
--  }
--}

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
    ["<leader>s"] = { ":%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>" },

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
      end
    },

    ["<leader>J"] = {
      function()
        require('cmp').mapping.complete()
      end
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

--vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--
--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--
--vim.keymap.set("n", "J", "mzJ`z")
--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("n", "N", "Nzzzv")
--
---- greatest n ever
--vim.keymap.set({ "n", "v" }, "<leader>P", [["+p]])
--
---- next greatest n ever : asbjornHaland
--vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
--
--vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
--
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--
--if not vim.g.vscode then
--    vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
--else
--    vim.keymap.set("n", "<leader>s", "i<Cmd>call VSCodeCall('editor.action.selectHighlights')<CR>")
--    vim.keymap.set("n", "<leader>pf", "<Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>")
--    vim.keymap.set("n", "<leader>f", "<Cmd>call VSCodeCall('editor.action.formatSelection')<CR>")
--end
--
--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
--vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
--
--vim.keymap.set("n", "u", "<cmd>undo<CR>")
--vim.keymap.set("n", "U", "<cmd>redo<CR>")
--
--vim.keymap.set("n", "{", "{zz")
--vim.keymap.set("n", "}", "}zz")
--
--if not vim.g.vscode then
--    vim.keymap.set("n", "<leader>h", "<cmd>:wincmd h<CR>")
--    vim.keymap.set("n", "<leader>j", "<cmd>:wincmd j<CR>")
--    vim.keymap.set("n", "<leader>k", "<cmd>:wincmd k<CR>")
--    vim.keymap.set("n", "<leader>l", "<cmd>:wincmd l<CR>")
--end
--
--vim.keymap.set("n", "dd", '"_dd')
--vim.keymap.set("n", "d", '"_d')
--
--vim.keymap.set("n", "<C-q>", "<C-v>");
