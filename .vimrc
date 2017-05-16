call plug#begin('~/.vim/plugged')
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/nerdtree'
Plug 'elmcast/elm-vim'
Plug 'sbdchd/neoformat'
Plug 'vim-syntastic/syntastic'
call plug#end()


set number
set relativenumber
"set termguicolors
"let ayucolor="mirage"
"colorscheme chroma

map <C-n> :NERDTreeToggle<CR>
map <C-l> :Neoformat<CR>
map <C-p> :SyntasticReset<CR>
map <C-,> :SyntasticCheck<CR>

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

" Neoformat configuration

let g:neoformat_javascript_prettier = {
            \ 'exe': 'prettier',
            \ 'args': ['--stdin', '--single-quote'],
            \ 'stdin': 1,
            \ }

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
