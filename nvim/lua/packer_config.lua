-- manage installed plugins
require("packer").startup(function(use)
    -- packer itself
    use "wbthomason/packer.nvim"

    -- auto closing pairs
    use "windwp/nvim-autopairs"

    -- file explorer 
    use "nvim-tree/nvim-tree.lua"

    -- icons theme
    use "nvim-tree/nvim-web-devicons"

    -- vscode colorscheme 
    use 'Mofiqul/vscode.nvim'

    -- autocompletion and lsp
    use {
        "neoclide/coc.nvim",
        branch = "release"
    }

    -- advanced syntax highlighting
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
            require("nvim-treesitter.install").prefer_git = true
        end
    }

    -- orgmode for neovim
    use {
        "nvim-neorg/neorg",
        run = ":Neorg sync-parsers",
        requires = "nvim-lua/plenary.nvim"
    }
end)
