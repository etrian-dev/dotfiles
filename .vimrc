syntax on
filetype plugin indent on

set noerrorbells
set tabstop=4 softtabstop=4 "tab width set to 4
set shiftwidth=4 "indentation is set to 4
set expandtab "expand TABs to spaces (otherwise tabstop will insert \t)
set smartindent
set nu "shows line numbers
set nowrap "lines that overflow don't wrap
set incsearch

set noswapfile
set nobackup "because the undodir & undofile below are set
set undodir=~/.vim/undodir "This is used to store the undo tree, instead of some other file
set undofile 

set colorcolumn=85 "sane max column length
highlight ColorColumn ctermbg=0 guibg=lightgrey

" vim-plug section for plugins
" Many more available at https://vimawesome.com/
" 1. vim-airline: status line
" 2. youcompleteme: autocompletion
" 3. vim-fugitive: git commandline integration
" 4. ctrlp-vim: fuzzy searcher
" 5. undotree: navigable interactive undo tree
" 6. vim-ripgrep: fast grep for vim
" 7. vim-man: view and grep manpages in vim
" 8. vim-surround: surrond text with other text (useful in HTML)
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-surround'
call plug#end()

"set the color scheme
colorscheme elflord

"some useful things and key remappings
"from the video at https://www.youtube.com/watch?v=n9k9scbTuvQ
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command=['.git/','git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching=0

let mapleader = " "

" FIXME: not working at the moment
"g:netrw_browse_split=2
"g:netrw_banner=0
"g:netrw_winsize=25
