" Settings for the Prettier vim plugin

" Enable auto formatting of files that have "@format" or "@prettier" tag
let g:prettier#autoformat = 1

" [Dis]allow auto formatting for files without "@format" or "@prettier" tag
let g:prettier#autoformat_require_pragma = 1

" Toggle the g:prettier#autoformat setting based on whether a config file can
" be found in the current directory or any parent directory.
" Note that this will override the g:prettier#autoformat setting!
let g:prettier#autoformat_config_present = 1

"" Set the CLI executable path
let g:prettier#exec_cmd_path = expand('~/.vim/dependencies/prettier')

"" Format file with Ctrl+Shift+I (like in VSCode)
nmap <C-S-i> <Plug>(PrettierAsync)

