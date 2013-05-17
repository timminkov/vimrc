set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'

set number
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab

nnoremap <C-n> :NERDTreeToggle<CR>
