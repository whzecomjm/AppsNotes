""""外观设置
"colorscheme desert   					"皮肤
syntax on      	

colorscheme one
set background=dark
"set number    							"显示行号
set showtabline=0             		    "隐藏顶部标签栏"
set guioptions-=r   					"隐藏右侧滚动条
set guioptions-=L						"隐藏左侧滚动条
set guioptions-=b                  	    "隐藏底部滚动条
set cursorline   						"突出显示当前行
set guifont=Monaco:h15    				"设定字体及大小
"set cursorcolumn               		"突出显示当前列
"set langmenu=zh_CN.UTF-8        		"显示中文菜单



"""" 变成辅助
autocmd bufwritepost .vimrc source $MYVIMRC   "保存配置文件后自动应用配置
"set nowrap               				"设置代码不折行
set enc=utf-8    						"将enc设置为utf-8
set fileformat=unix                     "设置以unix的格式保存文件"
set cindent                             "设置C样式的缩进格式"
set tabstop=4							"一个 tab 显示出来是多少个空格，默认 8
set shiftwidth=4         				"每一级缩进是多少个空格
set backspace+=indent,eol,start		    "set backspace&可以对其重置
set showmatch       					"显示匹配的括号
set scrolloff=5                         "距离顶部和底部5行
"set laststatus=2                       "命令行为两行

"""" 其他杂项
set mouse=a                    			"启用鼠标
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase                  		"忽略大小写"
set incsearch
set hlsearch       						"高亮搜索项
"set spell								"检查拼写
set noexpandtab                		    "不允许扩展table"
set whichwrap+=<,>,h,l
"set autoread 							"自动读取,实时更新, 但是开启会卡顿

"复制到系统剪贴板
"set clipboard=unnamed         			


""""""插件
call plug#begin('~/.vim/plugged')       "Plug.vim
Plug 'scrooloose/nerdtree'              "目录树
Plug 'itchyny/lightline.vim' 			"另一款美化工具栏
call plug#end()

"F9快速编译python文件
"map <F9> :w<cr>:!python3 %<cr>

""""""NERDTree 设置
"使用F3/ Ctrl+shift+Q 快速调出和隐藏NERDTree
map <C-S-Q> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1

"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.pdf', '\.djvu']

"窗口大小"
let NERDTreeWinSize=25

" 修改默认箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"空文件时打开 NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" 打开vim时自动打开NERDTree
"autocmd vimenter * NERDTree           

" 打开文件夹时打开NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" 显示行号
let NERDTreeShowLineNumbers=0
let NERDTreeAutoCenter=1

" 在终端启动vim时，共享NERDTree
"let g:nerdtree_tabs_open_on_console_startup=1


""""""""" 分屏设置
" 指定屏幕上可以进行分割布局的区域
set splitbelow               " 允许在下部分割布局
set splitright               " 允许在右侧分隔布局

" 组合快捷键：
nnoremap <C-J> <C-W><C-J>    " 组合快捷键：- Ctrl-j 切换到下方的分割窗口
nnoremap <C-K> <C-W><C-K>    " 组合快捷键：- Ctrl-k 切换到上方的分割窗口
nnoremap <C-L> <C-W><C-L>    " 组合快捷键：- Ctrl-l 切换到右侧的分割窗口
nnoremap <C-H> <C-W><C-H>    " 组合快捷键：- Ctrl-h 切换到左侧的分割窗口



