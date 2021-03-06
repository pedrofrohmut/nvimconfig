let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

let g:ctrlp_root_markers = ['pom.xml', 'yarn.lock', 'package.json', '**.sln', '.git/']

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|deps\|.\.git\|.\.next\|target\|.cache\|.\.dist\|dist\|bin\|obj\|venv\|android\|ios\',
  \ 'file': '\v\.(exe|so|dll|swp|swo)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" HELP
"   Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
"   Press <c-f> and <c-b> to cycle between modes.
"   Press <c-d> to switch to filename only search instead of full path.
"   Press <c-r> to switch to regexp mode.
"   Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"   Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
"   Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
"   Use <c-y> to create a new file and its parent directories.
"   Use <c-z> to mark/unmark multiple files and <c-o> to open them.
