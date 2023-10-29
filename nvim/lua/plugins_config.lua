-- indent blankline config
local highlight = { "DarkLine" }
local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "DarkLine", { fg = "#535863" })
end)
require('ibl').setup {
    scope = {
        enabled = false 
    },
    indent = {
        highlight = highlight
    }
}

-- nvim tree explorer
require('nvim-tree').setup({
    view = {
        width = 40;
    }
})

-- treesitter config
require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "vim", "lua", "vimdoc", "java", "python"
    },
    auto_install = true,
    highlight = { enable = true }
}

-- autopairs config
require('nvim-autopairs').setup {}

-- lualine config
require("lualine").setup({
    theme = "gruvbox_dark"
})
