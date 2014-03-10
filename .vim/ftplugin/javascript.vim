" For javascrupt

" load shared features
so ~/.vim/ftplugin/common.vim

setl tabstop=2
setl softtabstop=2
setl shiftwidth=2


" Map
func! s:loadUp()
	nmap <F9> :JSHint <CR>
	nmap <F7> :!node ./%<.js <CR>
	nmap <F4> :!cat ./%<.cpp && cat ./%<.cpp \|xsel -b <CR>
	imap <C-p> <C-x><C-o>
endfunc

call s:loadUp()

" Plugins and Dictionary
au filetype javascript call JavaScriptFold()
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
setl dictionary+=$HOME/.vim/dict/node.dict

" syntax
syn keyword nodejsModule require exports module console process __dirname __filename global

" highlight
hi link nodejsModule keyword
hi link javaScriptBraces Normal
hi link javaScriptParens Normal
