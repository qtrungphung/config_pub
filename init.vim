" Config file for NeoVim
" copy to stdpath('config') . '/init.vim'
" Can be used as .vimrc file

syntax on

set guicursor=
set noshowmatch
set noerrorbells    " no error bell
set tabstop=4 softtabstop=4    " size of tab
set shiftwidth=4    " size of >>
set expandtab    "tab is converted to spaces
set smartindent    " auto indentation
set nu    " line number
set relativenumber    " relative line number
set nowrap    " do not wrap line
set smartcase    " search case sensitive
set noswapfile
set nobackup    " do not back up file automatically
set undodir=~/.vim/undodir    " set back up dir directory
set undofile    " require user to input where to save back up file
set incsearch    " start to highlight search matches as you type
set termguicolors

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin(stdpath('data') . 'plugged')

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Colorscheme
Plug 'gruvbox-community/gruvbox'
" Git in Vim
Plug 'tpope/vim-fugitive'
" View man pages in Vim
Plug 'vim-utils/vim-man'
" Undo tree
Plug 'mbbill/undotree'

call plug#end()


let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark


let mapleader = " "

