"
" ~/.config/nvim/init.vim
"

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
nnoremap <C-i> :NvimTreeToggle<CR>
nnoremap <C-c> :set colorcolumn=80<CR>
nnoremap <C-x> :set colorcolumn=0<CR>
nnoremap <C-v> gg=G
nnoremap gs :%s/
nnoremap <S-k> {
nnoremap <S-j> }
nnoremap <C-h> db
nnoremap <C-l> de
nnoremap <S-h> d0
nnoremap <S-l> d$
nnoremap <C-n> 0
vnoremap <C-n> 0
nnoremap <C-p> $
vnoremap <C-p> $
nnoremap <C-j> :nohlsearch<CR>
nnoremap <C-m> o<ESC>
nnoremap <C-o> <S-o><ESC>
inoremap <C-k> <ESC>
cnoremap <C-k> <ESC>
vnoremap <C-k> <ESC>
vnoremap <S-k> {
vnoremap <S-j> }

" advanced configuration in lua
lua << EOF
    require("packer_config")
    require("plugins/nvim_tree_config")
    require("plugins/nvim_treesitter_config")
    require("plugins/nvim_autopairs_config")
    require("plugins/vscode_colors")
    require("plugins/neorg_config")
EOF
