" Leader key to space & clean up keybind conflicts
let mapleader="\<Space>"
nnoremap <Space> <Nop>
map <Space> <Leader>

" Closer Del
inoremap <C-L> <Del>

" Insert Line in Normal_Mode or use Ctrl-M
nnoremap <Enter> i<CR><Esc>

" Function Utils
nnoremap <F4> :bufdo bd
nnoremap <F5> :CocRestart<CR>
nnoremap <F6> :CocSearch<Space>
nnoremap <F7> <Plug>(coc-format)
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F11> :%s/\s\+$//g
nnoremap <F12> :source ~/.config/nvim/init.vim<CR>

" Ctrl Utils
nnoremap <silent> <C-S> :wa<CR>
nnoremap <silent> <C-F> :TagbarOpenAutoClose<CR>
nnoremap <silent> <C-N> :NERDTreeToggle<CR>

" Closing Characters on enter (CR)
inoremap (<CR> (<CR>)<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap {<CR> {<CR>}<Esc>ko
inoremap ({<CR> ({<CR>})<Esc>ko
inoremap `<CR> `<CR>`<Esc>ko<Tab>
inoremap (`<CR> (``)<Esc>hi<CR><Esc>ko<Tab>

" ### BUFFERS ############################################################

" List buffers
nnoremap <C-B> :ls<CR>:b<Space>

" ### TABS ###############################################################

" New Tab
nnoremap <silent> <C-T><C-N> :tabnew<CR>

" Close Tabs
nnoremap <silent> <C-T><C-Q> :tabclose<CR>
nnoremap <silent> <C-T><C-O> :tabonly<CR>

" # Move Tabs - Left/Right
nnoremap <silent> <C-T><C-H> :-tabmove<CR>
nnoremap <silent> <C-T><C-L> :+tabmove<CR>

" Go To - Next/Prev
nnoremap <silent> <C-L> :tabnext<CR>
nnoremap <silent> <C-H> :tabprevious<CR>

" ### WINDOWS ############################################################

" Resize Horizontal
nnoremap <silent> <Right> :resize +5<CR>
nnoremap <silent> <Left> :resize -5<CR>

" Resize Vertical
nnoremap <silent> <Down> :vertical resize -5<CR>
nnoremap <silent> <Up> :vertical resize +5<CR>

" Jump to Window Next/Prev
nnoremap <C-J> <C-W>w
nunmap <C-K>
nnoremap <C-K> <C-W>W
