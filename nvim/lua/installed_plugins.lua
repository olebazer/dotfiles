-- manage installed plugins
require('packer').startup(function(use)
    -- packer itself
    use 'wbthomason/packer.nvim'

    -- auto closing pairs
    use 'windwp/nvim-autopairs'

    -- onedark colorscheme
    use 'navarasu/onedark.nvim'

    -- indent indicator
    use 'lukas-reineke/indent-blankline.nvim'

    -- file explorer 
    use 'nvim-tree/nvim-tree.lua'

    -- icons theme
    use 'nvim-tree/nvim-web-devicons'

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- advanced syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            require('nvim-treesitter.install').update({ with_sync = true })
            require('nvim-treesitter.install').prefer_git = true
        end
    }
end)
