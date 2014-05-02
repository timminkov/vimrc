" ?
set nocompatible

" Vundle stuff (Plugins)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'slim-templates/vim-slim'
Plugin 'terryma/vim-expand-region'
Plugin 'skalnik/vim-vroom'
call vundle#end()
filetype plugin on

" Line numbers
set number

" Reasonable tabs (two spaces)
set textwidth=0 tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Syntax Highlighting
syntax on

" Makes text wrap down instead of cutting it off
set display+=lastline

" Makes scrolling in MacVim faster
set lazyredraw

" Auto indentation
set smartindent

" Relative line numbers
set rnu

" Lets you search using '/' ignoring case. Smart enough to see caps
set ignorecase
set smartcase

" Highlights results as you type out a search
set incsearch
set showmatch
set hlsearch

" Maps leader (\) to space
let mapleader = "\<Space>"


" Maps : to ;, removing the shift step
nnoremap ; :

" Toggles :setpaste on and off using f2, for pasting text
set pastetoggle=<F2>

" Maps control-n to opening/closing NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Maps control-p to searching with ctrl-p
let g:ctrlp_map = '<c-p>'

" Maps control-] to moving to next buffer
nnoremap <C-]> :bn<cr>

" Maps jj to leaving insert mode (press twice quickly)
imap jj <ESC>

" Outdated stuff for miniBufExpl plugin
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Vim-RSpec hotkeys, plugin for running specs in Vim
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm"
let g:rspec_command = "!bundle exec rspec -fd {spec}"

" Strip whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWritePre * :%s/\s\+$//e

" Slim syntax highlighting
autocmd BufRead,BufNewFile *.slim set ft=slim


" automatically reload vimrc when it's saved
augroup AutoReloadVimRC
  au!
  au BufWritePost $MYVIMRC so $MYVIMRC
augroup END

" hotkey gitstatus (for vim fugitive)
nnoremap <leader>gs :Gstatus<CR><C-W>15+

" type // to clear search highlight
map //  :nohlsearch<CR>; echo 'Search highlight cleared' <CR>

" set the fill character in splits to a space
set fillchars=vert:\ "

" Open a Quickfix window for the last search.
nnoremap <silent> ,/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" use R (xcommand) to run shell commands in vim
command! -complete=shellcmd -nargs=* R belowright 15new | r ! <args>

" use V for expand text selection
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" use hotkeys for navigating windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
