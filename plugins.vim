call plug#begin('~/.vim/plugged')

" JavaScript Support
Plug 'pangloss/vim-javascript'

" TypeScript Syntax Highlight
Plug 'leafgarland/typescript-vim'

" JSX Support
Plug 'maxmellon/vim-jsx-pretty'

" Elixir Syntax Highlight/Indentation
Plug 'elixir-editors/vim-elixir'

" Svelte Syntax Highlight/Indentation
Plug 'leafOfTree/vim-svelte-plugin'

" Python Syntax Highlight/Indentation
Plug 'hdima/python-syntax'

" Syntax and Style checker for Python
Plug 'nvie/vim-flake8'

" Jinja (Python/HTML) Syntax Highlight
Plug 'glench/vim-jinja2-syntax'

" Surrounder for Simple Stuff
Plug 'tpope/vim-surround'

" Dot command now works with some plugins too
Plug 'tpope/vim-repeat'

" Commenter
Plug 'tpope/vim-commentary'

" Vim Sneak - The missing motion
Plug 'justinmk/vim-sneak'

" COC - Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Emmet - HTML JSX snippets
Plug 'mattn/emmet-vim'

" Auto close HTML tags
Plug 'alvan/vim-closetag'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" CtrlP - Quick open files
Plug 'ctrlpvim/ctrlp.vim'

" NERDTree - File Tree Manager and Viewer
Plug 'scrooloose/nerdtree'

" Git
" Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Color Schemes
Plug 'mhartington/oceanic-next'
" Plug 'morhetz/gruvbox'
" Plug 'rakr/vim-one'
" Plug 'sjl/badwolf'
" Plug 'kyoz/purify', { 'rtp': 'vim' }

" Goyo
" Plug 'junegunn/goyo.vim'

call plug#end()
