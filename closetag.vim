" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = "*.html,*.xhtml,*.jsx,*.vue"

" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<c-j>>'
