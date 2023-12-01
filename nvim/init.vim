" NEOVIM

" basic configuration in vimscript
set noswapfile
set number
set noruler
set noshowmode
set cmdheight=0
set termguicolors
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=0
set splitright
set splitbelow
set guicursor=i:block
set fillchars=eob:\ 
set background=dark

" keybindings
inoremap <C-c> <ESC>
nnoremap <C-i> :NvimTreeToggle<CR>

" advanced configuration in lua
lua << EOF
    require("packer_config")
    require("plugins/nvim_tree_config")
    require("plugins/nvim_treesitter_config")
    require("plugins/nvim_autopairs_config")
    require("plugins/vscode_colors")
EOF
