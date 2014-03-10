" For java

" load shared features
so ~/.vim/ftplugin/common.vim

" Map
func! s:loadUp()
	nmap <F9> :!javac -Xlint:deprecation %<.java <CR>
	nmap <F7> :!java %< <CR>
	nmap <F4> :!cat ./%<.cpp && cat ./%<.cpp \|xsel -b <CR>
endfunc

call s:loadUp()
