" For cpp

" load shared features
so ~/.vim/ftplugin/common.vim

" Map
func! s:loadUp()
	if &filetype == 'cpp' 
		nmap <F9> :!g++ %<.cpp -o %< -g -Wall  && size %< <CR>
		nmap <F8> :!gdb %< <CR>
		nmap <F7> :!time ./%< <CR>
		nmap <F4> :!cat ./%<.cpp && cat ./%<.cpp \|xsel -b <CR>
	elseif &filetype == 'c'
		nmap <F9> :!gcc %<.c -o %< -g -Wall  && size %< <CR>
		nmap <F8> :!gdb %< <CR>
		nmap <F7> :!time ./%< <CR>
		nmap <F4> :!cat ./%<.c && cat ./%<.c \|xsel -b <CR>
	endif
endfunc

call s:loadUp()
