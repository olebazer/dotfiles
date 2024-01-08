-- lsp configuration

return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({})
            require("mason").setup({
                ui = {
                    --width = 1.0,
                    --height = 1.0,
                },
            })
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
            vim.api.nvim_set_hl(0, "MyCompMenu", { bg = "None", fg = "White" })
            vim.api.nvim_set_hl(0, "MyCompSel", { bg = "White", fg = "Black", bold = true })
            vim.api.nvim_set_hl(0, "MyDocWin", { bg = "None", fg = "White" })
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered({
                        --border = { "+", "-", "+", "|", "+", "-", "+", "|" },
                        --border = { "", "", "", "", "", "", "", "" },
                        --winhighlight = "Normal:MyCompMenu,FloatBorder:MyCompMenu,CursorLine:MyCompSel",
                        winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel",
                    }),
                    documentation = cmp.config.window.bordered({
                        --border = { "+", "-", "+", "|", "+", "-", "+", "|" },
                        --border = { "", "", "", "", "", "", "", "" },
                        --winhighlight = "Normal:MyDocWin,FloatBorder:MyDocWin,CursorLine:None",
                        winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel",
                    }),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-u>"] = cmp.mapping.scroll_docs(4),
                    ["<C-j>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<C-Space>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                }, {
                    { name = "buffer" },
                }),
            })
            cmp.setup.filetype("gitcommit", {
                sources = cmp.config.sources({
                    { name = "git" },
                }, {
                    { name = "buffer" },
                }),
            })
            cmp.setup.cmdline({ "/", "?" }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = "buffer" },
                },
            })
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "path" },
                }, {
                    { name = "cmdline" },
                }),
            })
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig["lua_ls"].setup({
                capabilities = capabilities,
            })
            lspconfig["jdtls"].setup({
                capabilities = capabilities,
            })
            lspconfig["clangd"].setup({
                capabilities = capabilities,
            })
            lspconfig["tsserver"].setup({
                capabilities = capabilities,
            })
            lspconfig["html"].setup({
                capabilities = capabilities,
            })
            lspconfig["cssls"].setup({
                capabilities = capabilities,
            })
            lspconfig["jedi_language_server"].setup({
                capabilities = capabilities,
            })
            lspconfig["emmet_language_server"].setup({
                capabilities = capabilities,
            })
        end,
    },
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.prettier,
                    null_ls.builtins.formatting.clang_format,
                    null_ls.builtins.formatting.black,
                },
            })
        end,
    },
}
