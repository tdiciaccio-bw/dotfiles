call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'
Plug 'digitaltoad/vim-pug'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'Valloric/YouCompleteMe'
Plug 'mxw/vim-jsx'
call plug#end()
" Deoplete settings
" let g:deoplete#enable_at_startup = 1


" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

set number
set numberwidth=1
:set backspace=indent,eol,start
set pumheight=5

:let mapleader="\<Space>"

" ALEFix mapped to space+d
nmap <leader>d <Plug>(ale_fix)

" enhance YCM JS completion with tern's smarts
autocmd FileType javascript setlocal omnifunc=tern#Complete

" Deoplete remap selectors to tab and shift-tab
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Colorscheme thing
colorscheme one
set background=dark

" Dropdown menu colorscheme thing
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" Airline theme
let g:airline_theme='deus'

" ale settings
let g:ale_linters = {'javascript': ['eslint'],}
let g:ale_fixers = {'javascript': ['eslint'],}
let g:ale_fix_on_save = 1

" Set tab width to two spaces
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Highlight characters over the 100 character line limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.\+/

" JSX context highlighting

