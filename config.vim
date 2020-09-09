syntax on
set hidden
set wildmenu
"Line number settings
set number
set relativenumber
"Search settings
set incsearch
set hlsearch
"Cursorline settings
set cursorline
colorscheme apprentice
hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=Yellow
hi CursorLine ctermbg=236
let g:sneak#label = 1

let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

filetype plugin indent on

let g:hardtime_default_on = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:hardtime_allow_different_key = 1
let g:mta_use_matchparen_group = 1
let g:neocomplete#enable_at_startup = 1 
let g:SuperTabDefaultCompletionType = "<c-n>"
