" Settings for the Command-T vim plugin

if has('nvim')

	" Use the newer lua implementation, because the it's better, faster and
	" Neovim supports it.
	let g:CommandTPreferredImplementation='lua'

	" Add keymaps because the Lua version doesn't set them automatically

	" This is so I can use Control for the keybinds instead of the default
	" <Leader>, which happens to be '\'

	const s:save_leader = exists('mapleader') ? mapleader : v:false

	let mapleader = 'FIND-A-WAY-TO-SET-LEADER-TO-CTRL-'

	nmap <silent> <Leader>t <Plug>(CommandT)
	nmap <silent> <Leader>b <Plug>(CommandTBuffer)
	nmap <silent> <Leader>j <Plug>(CommandTJump)

	if s:save_leader
		mapleader = s:save_leader
	else
		unlet mapleader
	endif

	unlet s:save_leader

else

	" Use the old Ruby implementation, because the newer Lua one only
	" supports Neovim
	let g:CommandTPreferredImplementation='ruby'

endif
