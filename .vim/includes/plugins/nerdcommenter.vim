" Settings for the NERDCommenter vim plugin

" Toggle comments with Ctrl+/ (like in VSCode, and many other editors)
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let g:NERDAltDelims = 1
let g:NERDTrimTrailingWhitespace = 1
