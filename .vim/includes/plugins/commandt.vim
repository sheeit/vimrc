" Settings for the Command-T vim plugin

if has('nvim')

	" Use the newer lua implementation, because the it's better, faster and
	" Neovim supports it.
	let g:CommandTPreferredImplementation='lua'

	" Add keymaps because the Lua version doesn't set them automatically
	nmap <silent> <Leader>t <Plug>(CommandT)
	nmap <silent> <Leader>b <Plug>(CommandTBuffer)
	nmap <silent> <Leader>j <Plug>(CommandTJump)

else

	" Use the old Ruby implementation, because the newer Lua one only
	" supports Neovim
	let g:CommandTPreferredImplementation='ruby'

endif
