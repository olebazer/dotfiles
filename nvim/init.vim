" NEOVIM

" basic configuration in vimscript
set noswapfile
set number
set termguicolors
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=0
set splitright
set splitbelow
set fillchars=eob:\ 
set background=dark
set cursorline
autocmd WinEnter * set cursorline 
autocmd WinLeave * set nocursorline

" advanced configuration in lua
lua << EOF
    require("installed_plugins")
    require("plugins_config")
    require("colorscheme")
EOF
