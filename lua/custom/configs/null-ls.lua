local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
    -- General
    formatting.prettier,
    formatting.stylua,
    formatting.eslint,
    lint.shellcheck,

    -- Python
    lint.mypy,
    lint.ruff,
    formatting.black
}

null_ls.setup {
   debug = true,
   sources = sources,
}

