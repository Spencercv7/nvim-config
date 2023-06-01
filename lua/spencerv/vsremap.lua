if vim.g.vscode then
    vim.keymap.set({ "n" }, "<leader>e", "<Cmd>call VSCodeCall('vscode-harpoon.editorQuickPick')<CR>", { silent = true })
    vim.keymap.set({ "n" }, "<leader>E", "<Cmd>call VSCodeCall('vscode-harpoon.editEditors')<CR>", { silent = true })
    vim.keymap.set({ "n" }, "<leader>a", "<Cmd>call VSCodeCall('vscode-harpoon.addEditor')<CR>", { silent = true })
    vim.keymap.set({ "n" }, "<leader>k", "<Cmd>call VSCodeCall('editor.action.showHover')<CR>", { silent = true })
    vim.keymap.set({ "n" }, "<leader>b", "<Cmd>call VSCodeCall('workbench.files.action.showActiveFileInExplorer')<CR>", { silent = true })
    vim.keymap.set({ "n" }, "u", "<Cmd>call VSCodeCall('undo')<CR>", { silent = true })
    vim.keymap.set({ "n" }, "U", "<Cmd>call VSCodeCall('redo')<CR>", { silent = true })
    vim.keymap.set({ "n" }, "gr", "<Cmd>call VSCodeCall('editor.action.goToReferences')<CR>", {silent = true})
end
