-- lsp config

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"gopls",
					"csharp_ls",
					"jdtls",
					"html",
					"ts_ls",
					"cssls",
					"angularls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			-- lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			-- go
			lspconfig.gopls.setup({
				capabilites = capabilities,
			})
			-- c#
			lspconfig.csharp_ls.setup({
				capabilites = capabilities,
			})
			-- java
			lspconfig.jdtls.setup({
				capabilities = capabilities,
			})
			-- html
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			-- typescript
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			-- css
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			-- angular
			lspconfig.angularls.setup({
				capabilities = capabilities,
				cmd = { "node", vim.fn.expand("$PWD/node_modules/@angular/language-server"), "--stdio" },
				on_new_config = function(new_config, new_root_dir)
					new_config.cmd = {
						"node",
						new_root_dir .. "/node_modules/@angular/language-server",
						"--stdio",
						"--tsProbeLocations",
						new_root_dir .. "/node_modules",
						"--ngProbeLocations",
						new_root_dir .. "/node_modules",
					}
				end,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
		end,
	},
	{
		"L3MON4D3/luasnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()
			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					--completion = cmp.config.window.bordered(),
					--documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<Tab>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, { name = "buffer" }),
			})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					-- lua
					null_ls.builtins.formatting.stylua,
					-- prettier
					null_ls.builtins.formatting.prettier,
				},
			})
		end,
	},
}
