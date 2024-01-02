vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest n ever
vim.keymap.set({ "n", "v" }, "<leader>P", [["+p]])

-- next greatest n ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

if vim.g.vscode then
    vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
    vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
end

if not vim.g.vscode then
    vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
else
    vim.keymap.set("n", "<leader>s", "i<Cmd>call VSCodeCall('editor.action.selectHighlights')<CR>")
    vim.keymap.set("n", "<leader>pf", "<Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>")
    vim.keymap.set("n", "<leader>f", "<Cmd>call VSCodeCall('editor.action.formatSelection')<CR>")
end

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "u", "<cmd>undo<CR>")
vim.keymap.set("n", "U", "<cmd>redo<CR>")

vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")

if not vim.g.vscode then
    vim.keymap.set("n", "<leader>h", "<cmd>:wincmd h<CR>")
    vim.keymap.set("n", "<leader>j", "<cmd>:wincmd j<CR>")
    vim.keymap.set("n", "<leader>k", "<cmd>:wincmd k<CR>")
    vim.keymap.set("n", "<leader>l", "<cmd>:wincmd l<CR>")
end

vim.keymap.set("n", "dd", '"_dd')
vim.keymap.set("n", "d", '"_d')

vim.keymap.set("n", "<C-q>", "<C-v>");
