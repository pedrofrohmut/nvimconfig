filetype indent plugin on

set number
set relativenumber
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set linebreak
set encoding=utf-8
set fileformat=unix
set cmdheight=1
set mouse=nv
set signcolumn=yes:1
set nohlsearch
set colorcolumn=101,121
set nowrap

colorscheme OceanicNext
" Transparency
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

" Remove auto insert comments next line
autocmd FileType * setlocal formatoptions-=cro
