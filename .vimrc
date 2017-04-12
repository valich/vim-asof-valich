filetype plugin on
filetype indent on
set autoindent
set ruler

syntax enable
colorscheme slate

set cursorline
set number

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set mouse=a

set hlsearch
set incsearch
set scroll=10
 
set autochdir

" plugin
execute pathogen#infect()

nmap <F8> :TagbarToggle<CR>         
let g:tagbar_left = 0
let g:tagbar_width = 60
let g:tagbar_iconchars = ['▶', '◢']
let g:tagbar_sort = 0

set completefunc=ClangComplete
let g:clang_auto_select = 1

" Maps
vmap > >gv
vmap < <gv
"map <F2> :w<CR>
"imap <F2> <Esc>:w<CR>i
map <C-t> :tabe<Space>
" noremap <C-a> <C-w> 
" noremap <C-w> :tabc<CR>
map <F2> :tabn<CR>
map <F1> :tabp<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" a little of colors
set t_Co=256

highlight Search cterm=bold ctermbg=57 ctermfg=252
highlight LineNr cterm=bold ctermbg=233 ctermfg=237
highlight CursorLine cterm=none ctermbg=233
highlight Comment cterm=none ctermfg=94
" highlight OverLength ctermbg=52 ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

" folding
highlight FoldColumn ctermbg=233 ctermfg=237 
highlight Folded ctermbg=235 ctermfg=245
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set foldmethod=syntax
set foldlevel=1
set foldcolumn=8
map <F3> za
map <F4> zm
map <F5> zr

