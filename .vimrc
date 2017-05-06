call plug#begin('~/.vim/plugged')
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ayu-theme/ayu-vim'
call plug#end()

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu


set expandtab
set shiftwidth=2
set softtabstop=2

map <C-n> :NERDTreeToggle<CR> 


"Elm stuff
let g:elm_format_autosave = 1

"Relative numbers
set relativenumber

function! NumberToggle()
  if(&number == 0)
    set number
  else
    set nonumber
  endif
endfunc

nnoremap <C-m> :call NumberToggle()<CR>
:au FocusLost * :set number
:au FocusGained * :set relativenumber

nnoremap ; :

set path+=**
set wildmenu
set clipboard=unamed
