" Setting 

set nu
set mouse=
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set list listchars=extends:❯,precedes:❮,tab:▸\  

let mapleader='\'
colorscheme nord
" set nofoldenable
let g:SimpylFold_fold_import = 0
let g:SimpylFold_fold_docstring = 0

" Plug

call plug#begin('~/.config/nvim/plugged')
    " Plug 'nordtheme/vim'
    Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'echasnovski/mini.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'easymotion/vim-easymotion'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'tmhedberg/SimpylFold'
    Plug 'anuvyklack/pretty-fold.nvim'
call plug#end()
" 'highlighter' : applies highlighting to the candidates
call wilder#set_option('renderer', wilder#popupmenu_renderer({'highlighter': wilder#basic_highlighter(),}))
call wilder#setup({'modes': [':', '/', '?']})

lua << END
    require('mini.pairs').setup()
    require('pretty-fold').setup()
    require('lualine').setup{options = { theme  = 'nord' },...}
    -- require('mini.completion').setup({delay={completion=10}})
    vim.api.nvim_set_keymap('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]],   { noremap = true, expr = true })
    vim.api.nvim_set_keymap('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { noremap = true, expr = true })
    vim.api.nvim_set_keymap('i', '<CR>', [[pumvisible() ? "\<C-y>" : "\<CR>"]], { noremap = true, expr = true })
    -- open :CocConfig, add {"suggest.noselect": true} to coc-settings.json
END

