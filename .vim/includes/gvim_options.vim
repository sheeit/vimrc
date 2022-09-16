" This file is only included if has('gvim_running')
" so no need to add the check here

" Set options for GVim

" Pick a good font to use
set guifont=Source\ Code\ Pro\ 13

" Enable mouse support
set mouse=a

" Pick an appropriate colorscheme
packadd dracula
colorscheme dracula

" GUI (GVim) options

"" !: External commands are executed in a terminal window.
"" a: Automatically yank selected text to the PRIMARY clipboard (register "*).
"" c: Use console dialogs instead of popup dialogs for simple choices.
"" e: Add GUI (GTK) tab-pages instead of non-GUI ones.
"" i: Use a vim icon.
"" g: Grey out inactive menu items instead of not showing them at all.

set guioptions=!aceig

" Attempt to open a pseudo-tty for I/O to/from shell commands
if !has('nvim')
	set guipty
endif
