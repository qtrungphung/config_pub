" Config file for NeoVim
" copy to stdpath('config') . '/init.vim'
" Can be used as .vimrc file
" References: https://medium.com/@hanspinckaers/setting-up-vim-as-an-ide-for-python-773722142d1d


" Plugins

call plug#begin(stdpath('data') . 'plugged')

" Coc Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'gruvbox-community/gruvbox'    " Colorscheme
Plug 'tpope/vim-fugitive'    " Git in Vim
Plug 'vim-utils/vim-man'    " View man pages in Vim

Plug 'mbbill/undotree'    " Undo tree
Plug 'Vimjas/vim-python-pep8-indent'  "better indenting for python
" Plug 'w0rp/ale'    " python linter for PyTorch

call plug#end()



" path to python
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '~/anaconda3/bin/python'



syntax on

set guicursor=
set noshowmatch
set noerrorbells           " no error bell

set tabstop=4 softtabstop=4    " size of tab
set shiftwidth=4           " size of >>
set expandtab              " tab is converted to spaces
set smartindent            " auto indentation
set nu        " line number
set relativenumber         " relative line number
set nowrap                 " do not wrap line
set smartcase              " search case sensitive

set noswapfile
set nowritebackup
set nobackup               " do not back up file automatically
set undodir=~/.vim/undodir     " set back up dir directory
set undofile           " require user to input where to save back up file

set hlsearch  " highlight search and search while typing
set incsearch          " start to highlight search matches as you type
set cpoptions+=x  " stay at seach item when <esc>

set termguicolors


" Give more space for displaying messages.
set cmdheight=2

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience. (coc.nvim)
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c



" coc.nvim config

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif



" Theme
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark


" let mapleader = " "
