local builtin = require('telescope.builtin')

require('telescope').load_extension('projects')

require('telescope').setup({
    file_ignore_patterns = { "node%_modules/.*" },
})

if not vim.g.vscode then
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
end


