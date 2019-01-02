call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'
Plug 'digitaltoad/vim-pug'
" Plug 'w0rp/ale'
Plug 'prettier/vim-prettier'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'Valloric/YouCompleteMe'
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
let b:ale_fixers = ['prettier']
let g:ale_fix_on_save = 1
