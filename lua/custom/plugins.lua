local plugins = {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"black",
				"mypy",
				"ruff",
				"lua-language-server",
				"eslint-lsp",
				"stylua",
				"prettier",
				"typescript-language-server",
				"yaml-language-server",
				"gopls",
        		"css-lsp"
			},
		},
	},
	{
		"neovim/nvim-lspconfig",

		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
	{
		"ahmedkhalf/project.nvim",
		lazy = false,
		config = function()
			require("project_nvim").setup({
				detection_methods = { "pattern" },
				patterns = { ".proot" },
			})
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({
				size = 20,
				direction = "float",
			})
		end,
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require('harpoon').setup()
    end,
	},
}

return plugins
