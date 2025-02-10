-- nvim tree file explorer configuration

return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup({
            view = {
                width = 36,
            },
        })
    end,
}
