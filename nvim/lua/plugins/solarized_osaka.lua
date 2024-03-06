-- solarized-osaka colorscheme

return {
    'craftzdog/solarized-osaka.nvim',
    priority = 1000,
    config = function()
        require("solarized-osaka").setup({
            transparent = true,
            terminal_colors = true,
            styles = {
                comments = { italic = false },
                keywords = { italic = false },
                functions = {},
                variables = {},
                sidebars = "dark",
                floats = "dark",
            },
            sidebars = { "qf", "help" },
            day_brightness = 0.3,
            hide_inactive_statusline = false,
            dim_inactive = false,
            lualine_bold = false,
            ---@param colors ColorScheme
            on_colors = function(colors) end,
            ---@param highlights Highlights
            ---@param colors ColorScheme
            on_highlights = function(highlights, colors) end,
        })
        vim.cmd.colorscheme('solarized-osaka')
    end,
}
