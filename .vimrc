set nu

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 设置当文件被改动时自动载入
set autoread
" 打开状态栏标尺
set ruler
" 语法高亮
set syntax=on
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
"set noexpandtab
set expandtab
" 在行和段开始处使用制表符
set smarttab

"set list
"set listchars=tab:▸\ ,eol:\|
"set lcs=tab:\|\


"搜索忽略大小写
"set ignorecase
"搜索逐字符高亮
set hlsearch

highlight Comment  term=bold ctermfg=lightBlue guifg=#80a0ff gui=bold

highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\r\n$\|\s\+$\| \+\ze\t$\|\t\+$/

set nobackup
set nowritebackup
set noswapfile

set showcmd
set cmdheight=1

"imap { {}<ESC>i<CR><ESC>V<O
"imap ( ()<ESC>i


" 显示tab和空格
"set list
" 设置tab和空格样式
"set listchars=tab:\|\ ,nbsp:%,trail:-
" 设定行首tab为灰色
"highlight LeaderTab guifg=#666666
" 匹配行首tab
"match LeaderTab /^\t/

"let g:indent_guides_guide_size = 1

"nnoremap <silent> <F8> :TlistToggle<CR>
"let Tlist_Use_Right_Window=1
"let Tlist_Ctags_Cmd='/home/hly/work/msm8939/msm8939_modem/LINUX/android/tags'
if has("cscope")
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
" else add database pointed to by environment
elseif $CSCOPE_DB != ""
cs add $CSCOPE_DB
endif
set csverb
endif

