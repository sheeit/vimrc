" Settings for the Airline vim plugin


" Always show status line
set laststatus=2

" Hide the mode in the lower status line (-- INSERT --, etc.) because we
" already have Airline's
set noshowmode

" Automatically populate the g:airline_symbols dictionary with the powerline
" symbols (disabled because powerline fonts somehow don't work on my machine,
" and they look ugly, anyway)
let g:airline_powerline_fonts = 0

" Need to load the packages to recognize AirlineTheme command
packadd vim-airline
packadd vim-airline-themes

"" Set the theme
AirlineTheme jellybeans
