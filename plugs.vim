let havevundlealready=1
if !filereadable(expand(g:vim_home.'autoload/plug.vim'))
	echo "installing vim-plug...\n"
	silent !mkdir -p ~/.vim/autoload
	silent !git clone https://github.com/junegunn/vim-plug ~/.vim/autoload
	let havevundlealready = 0
endif

"Active plugins
"============================================================================
call plug#begin('~/.vim/plugged')

"Let Vundle manage Vundle

"You can disable or add new ones here:
"Plugins from github repos:

Plug 'garbas/vim-snipmate'
Plug 'elzr/vim-json'
Plug 'justinmk/vim-sneak'
let g:vim_json_syntax_conceal = 0 
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'ervandew/supertab'

Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'

Plug 'vim-scripts/AutoComplPop'

Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'flazz/vim-colorschemes'			
Plug 'raimondi/delimitmate'			
Plug 'easymotion/vim-easymotion'
Plug 'kshenoy/vim-signature'
Plug 'wellle/targets.vim'
"Plug 'takac/vim-hardtime'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Valloric/MatchTagAlways'

call plug#end()            " required

" Detect new plugins and install them
for [name, spec] in items(g:plugs)
	if !isdirectory(spec.dir)
		echo "New Plugin detected, installing..."
		:PlugInstall
	endif
endfor

filetype plugin indent on    " required
if havevundlealready == 0
	echo "Installing Bundles, please ignore key map error messages"
	echo ""
	:PlugInstall
endif
