vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- OR setup with some option
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width =  50,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        }
    }
})

vim.keymap.set("n", "<leader>b", vim.cmd.NvimTreeFindFileToggle)

