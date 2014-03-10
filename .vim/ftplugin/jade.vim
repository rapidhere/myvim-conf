" For less - Dynamic css

" load shared features
so ~/.vim/ftplugin/common.vim

" Map
func! s:loadUp()
	nmap <F9> :!jade %<.jade --pretty <CR>
	nmap <F8> :!rm -rf %<.html <CR>
	nmap <F7> :vs %<.html <CR>
endfunc

call s:loadUp()
