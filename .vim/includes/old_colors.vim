" Base16

if filereadable(expand('~/.vimrc_background'))
	let base16colorspace=256
	source ~/.vimrc_background
endif

" Actually, I'll just set this manually, because the name is just dracula, not
" base16-dracula, because I didn't install it with base16
colorscheme dracula

" I'm using OneDark now.

if !has('gui_running')
	let g:onedark_termcolors=16
endif

let g:onedark_terminal_italics=0

colorscheme onedark
colorscheme solarized
colorscheme gruvbox


" gruvbox colorscheme options

"" Enable italic text in the terminal
let g:gruvbox_italic = '1'
let g:gruvbox_termcolors = '16'


" seoul256.vim colorscheme options

"" Set a darker background for the dark theme
"" (range: 233 (darkest) ~ 239 (lightest)) (default: 237)
let g:seoul256_background = 235

"" Don't mess with the light theme though
"" (range: 252 (darkest) ~ 256 (lightest)) (default: 253)
let g:seoul256_light_background = 253

"" Use URxvt colors, not some MacOS terminal color thing
let g:seoul256_srgb = 1


" Set the font for GVim
if has("gui_running")
	"colorscheme default
	"colorscheme seoul256
	"set bg=light
	"colorscheme gruvbox
	colorscheme dracula
else
	colorscheme jellybeans
endif
