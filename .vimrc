" Global {
set fileencodings=cs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" }

" load pathogen {
call pathogen#infect()
" }

" load Powerline {
set laststatus=2
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy' 
" }

" load minibufexpl {
" let g:miniBufExplVSplit = 20
" let g:miniBufExplSplitBelow = 1
" let g:miniBufExplSplitToEdge = 1
" }

" load BufferExplorer {
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerDetailedHelp = 1
" }

" load NerdTree {
let g:NERDChrismasTree = 1
let g:NERDTreeIgnore = ['\~$', '\.pyc$', '\.o$']
let g:NERDTreeWinPos = 'left'
let g:NERDTreeQuitOnOpen = 1
autocmd vimenter * if !argc() | NERDTree | endif
" }

" load TagBar {
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_left = 0
autocmd BufReadPost,BufNewFile *.c,*.cpp,*.h,*.hpp,*.cc,*.cxx,*.py,*.js,*.sh,*.bash TagbarOpen
" }

" load xptemplate {
" let g:xptemplate_key = '<Tab>'
" }

" General Settgins : {
set number
set ruler
set cursorcolumn
set cursorline
set fdm=marker
set mouse=a
set autochdir
syntax on

set incsearch
set hlsearch
set ignorecase
map <silent><leader><CR> :noh<CR>

set nobackup
set nowb
set noswapfile

set lazyredraw
set autoread

set smartindent
set autoindent

set tabstop=4
set softtabstop=4
set shiftwidth=4

filetype plugin indent on
" }

" Wild Menu {
set wildmenu
set wildignore=*.o,*~,*.pyc
" }

" Colors {
hi clear

set background=dark
color mango

" hi Normal ctermfg=LightGrey ctermbg=None
" hi Search ctermfg=Red ctermbg=Yellow cterm=Bold
" hi Visual ctermbg=238 ctermfg=230
" hi Pmenu ctermbg=235 ctermfg=167
" hi PmenuSel ctermfg=Red ctermbg=Lightgrey
" hi PmenuSbar ctermfg=113

hi Cursorline ctermfg=None ctermbg=236 cterm=None
hi Cursorcolumn ctermfg=None ctermbg=236 cterm=None

" hi Comment ctermfg=Blue
" hi Todo ctermfg=red ctermbg=yellow cterm=bold
" hi Constant ctermfg=167
" hi Indentifier ctermfg=150
" hi Function ctermfg=150
" hi Type ctermfg=113
" hi Statement ctermfg=Yellow
" hi Keyword ctermfg=117
" hi Special ctermfg=magenta
" }

" Maps {
" For buffers
nmap <C-Left> :bp	<CR>
imap <C-Left> <Esc>:bp	<CR>
nmap <C-Right> :bn	<CR>
imap <C-Right> <Esc>:bn	<CR>
nmap <C-e> :bd <CR>
" nmap <C-b> :TMiniBufExplorer <CR>
nmap <C-b> :BufExplorer <CR>
" For NERDTree
nmap <C-o> :e . <CR>
nmap <C-d> :NERDTreeToggle <CR>
" For tagbar
nmap <C-t> :TagbarToggle <CR>
" }

" autoreload .vimrc {
autocmd! bufwritepost .vimrc source ~/.vimrc
" }
