" For less - Dynamic css

" load shared features
so ~/.vim/ftplugin/common.vim

" Map
func! s:loadUp()
	nmap <F9> :!lessc --no-ie-compat --no-js --lint --strict-imports --verbose %<.less <CR>
endfunc

call s:loadUp()
