call plug#begin('~/.vim/plugged')
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/nerdtree'
Plug 'elmcast/elm-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'crater2150/vim-theme-chroma'
call plug#end()


set number
set termguicolors
"let ayucolor="mirage"
"colorscheme chroma

map <C-n> :NERDTreeToggle<CR>

set expandtab
set shiftwidth=2
set softtabstop=2
set path+=**
set wildmenu
set wildignore+=**/target/**,**/node_modules/**
set showcmd
nnoremap ; :
set listchars=tab:>~,nbsp:_,trail:.
set list

highlight ColoColumn ctermbg=magenta
call matchadd('ColorColumn', '\%121v', 100)
