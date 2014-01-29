set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-easymotion'

"Bundle 'file:///$HOME/.vim/plugin2/minibufexpl.vim'
"Bundle 'file:///$HOME/.vim/plugin2/tabbar.vim'

set number
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
syntax on
set mouse=a
set display+=lastline

filetype plugin on
nnoremap <C-n> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'

nnoremap <C-b> :MBEToggle<cr>
nnoremap <C-[> :bp<CR>
nnoremap <C-]> :bn<cr>
nnoremap <C-\> :MiniBufExpl-Mapping-d<CR>

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
