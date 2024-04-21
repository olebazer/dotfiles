-- kanagawa colorscheme

return {
    "craftzdog/solarized-osaka.nvim",
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
                sidebars = "transparent",
                floats = "transparent",
            },
            sidebars = { "qf", "help" },
            day_brightness = 0.0,
            hide_inactive_statusline = false,
            dim_inactive = false,
            lualine_bold = false,
            ---@param colors ColorScheme
            on_colors = function(colors) end,
            ---@param highlights Highlights
            ---@param colors ColorScheme
            on_highlights = function(highlights, colors)
                local separator = "#4c4c4c"
                highlights.WinSeparator = {
                    bg = separator,
                    fg = separator
                }
            end,
        })
        vim.cmd("colorscheme solarized-osaka-night")
        vim.cmd("hi NvimTreeWinSeparator guifg=4c4c4c guibg=4c4c4c")
    end
}
