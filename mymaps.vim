" LEADER
let mapleader="\<Space>"
nnoremap <Space> <Nop>
map <Space> <Leader>

" Closer Del
inoremap <C-L> <Del>

" Better Backspace
inoremap <C-BS> <C-W>

" Insert Line in Normal_Mode or use Ctrl-M
nnoremap <S-Enter> I<CR><Esc>
nnoremap <C-Enter> A <CR><Esc>k
nnoremap <Enter> i<CR><Esc>

" Utils
nnoremap <F4> :bufdo bd
nnoremap <F5> :CocRestart<CR>
nnoremap <F6> :CocSearch<Space>
nnoremap <silent> <F8> :wa<CR>
nnoremap <F11> :%s/\s\+$//g
nnoremap <F12> :source ~/.config/nvim/init.vim<CR>

" Closing Characters on enter (CR)
inoremap (<CR> (<CR>)<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap {<CR> {<CR>}<Esc>ko
inoremap ({<CR> ({<CR>})<Esc>ko
inoremap `<CR> `<CR>`<Esc>ko<Tab>
inoremap (`<CR> (``)<Esc>hi<CR><Esc>ko<Tab>

"" ### BUFFERS ############################################################
nnoremap <C-B> :ls<CR>:b<Space>
nnoremap <silent> <F9> :bp<CR>
nnoremap <silent> <F10> :bn<CR>

"" ### TABS ###############################################################
" # New Tab
nnoremap <silent> <C-T><C-N> :tabnew<CR>
"
" # Close Tabs
nnoremap <silent> <C-T><C-Q> :tabclose<CR>
nnoremap <silent> <C-T><C-O> :tabonly<CR>

" # Move Tabs - Left/Right
nnoremap <silent> <C-T><C-H> :-tabmove<CR>
nnoremap <silent> <C-T><C-L> :+tabmove<CR>

" # Go To - Next/Prev
nnoremap <silent> <C-L> :tabnext<CR>
nnoremap <silent> <C-H> :tabprevious<CR>

"" ### WINDOW ############################################################
"" Resize Horizontal
nnoremap <silent> <Right> :resize +5<CR>
nnoremap <silent> <Left> :resize -5<CR>
nnoremap <silent> <Down> :vertical resize -5<CR>
nnoremap <silent> <Up> :vertical resize +5<CR>
