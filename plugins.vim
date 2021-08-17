call plug#begin('~/.vim/plugged')

" JavaScript Support
Plug 'pangloss/vim-javascript'

" TypeScript Syntax Highlight
Plug 'leafgarland/typescript-vim'

" JSX Support
Plug 'maxmellon/vim-jsx-pretty'

" Elixir Syntax Highlight/Indentation
Plug 'elixir-editors/vim-elixir'

" Surrounder for Simple Stuff
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Commenter
Plug 'tpope/vim-commentary'

" Vim Sneak - The missing motion
Plug 'justinmk/vim-sneak'

" COC - Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Emmet - HTML JSX snippets
Plug 'mattn/emmet-vim'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" CtrlP - Quick open files
Plug 'ctrlpvim/ctrlp.vim'

" NERDTree - File Tree Manager and Viewer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Lots of good Colorschemes for Vim
Plug 'chriskempson/base16-vim'

" Color Scheme
Plug 'morhetz/gruvbox'

call plug#end()
