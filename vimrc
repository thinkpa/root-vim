 execute pathogen#infect() 
" -------------------------------------------------------------------------
" Description: 适合自己使用的vimrc文件，for Linux/Windows, GUI/Console
" LastModified: 2016-Nov-04 06:37:00  CST
" Version:     1.80
" -------------------------------------------------------------------------
	" 安全操作:
	"	
		" vim -x file1  " 创建加密文档
	" 查看配置信息:
		" :set或者:se   " 显示所有修改过的配置
		" :set all      " 显示所有的设定值
		" :set option?  " 显示option的设定值
		" :set nooption " 取消当期设定值
		" :version      " 查看vim 的功能支持   "
	" 查看按键映射:
		":verbose map <所要查找的快捷键>  
	" 视窗操作:
	"	命令行模式下输入
			":sp 1.txt  " 打开新的横向视窗来编辑1.txt
			":vsp 2.txt " 打开新的纵向视窗来编辑1.txt
			"q:         " vim显示历史命令
	" 普通模式下:
		" Ctrl-w s " 将当前窗口分割成两个水平的窗口
		" Ctrl-w v " 将当前窗口分割成两个垂直的窗口
		" Ctrl-w q " 即 :q 结束分割出来的视窗。如果在新视窗中有输入需要使用强制符！即:q!
		" Ctrl-w o " 打开一个视窗并且隐藏之前的所有视窗
		" Ctrl-w j " 移至下面视窗
		" Ctrl-w k " 移至上面视窗
		" Ctrl-w h " 移至左边视窗
		" Ctrl-w l " 移至右边视窗
		" Ctrl-w J " 将当前视窗移至下面
		" Ctrl-w K " 将当前视窗移至上面
		" Ctrl-w H " 将当前视窗移至左边
		" Ctrl-w L " 将当前视窗移至右边
		" Ctrl-w - " 减小视窗的高度
		" Ctrl-w + " 增加视窗的高度
"" ----------------------------------------------------------------------

" 启动pathogen[vim插件管理器]	2016-09-17
" ----------------------------------------------------------------------
 set nocompatible              " 关闭vi兼容模式 be iMproved, required
filetype off
	call pathogen#infect()
	call pathogen#helptags()
	set rtp+=~/.vim/Bundle/vundle/
	call vundle#rc()
	Bundle 'gmarik/vundle'
	"Bundle 插件管理相关用法
		"Bundle 'vim-plugin-foo'
		"Bundle 'vim-plugin-bar'
		" :BundleList          - 列举出列表中(.vimrc中)配置的所有插件
		" :BundleInstall       - 安装列表中全部插件
		" :BundleInstall!      - 更新列表中全部插件
		" :BundleSearch foo    - 查找foo插件
		" :BundleSearch! foo   - 刷新foo插件缓存
		" :BundleClean         - 清除列表中没有的插件
		" :BundleClean!        - 清除列表中没有的插件
		" :BundleList          - list configured bundles
		" :BundleInstall(!)    - install(update) bundles
		" :BundleSearch(!) foo - search(or refresh cache first) for foo
		" :BundleClean(!)      - confirm(or auto                        - approve) removal of unused bundles
		" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
		" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
		" 安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载，这个插件，同时如果
		" 需要配置这个插件，也是在vimrc中设置即可
		" ""原文链接：http://www.jianshu.com/p/0e85e7c9e543
		" The following are examples of different formats supported.
		" Keep Plugin commands between here and filetype plugin indent on.
		" scripts on GitHub repos
	"vim  相关插件
		""'' Fugitive: Git 集成，强烈推荐！
		""" 插件Command-T是一个基于Ruby和C扩展实现的快速文件浏览的插件，类似TextMate的Go to File
		""" 插件winmanager可将nerdtree和taglist放到同一个”侧边栏”中，nerdtree在上方，taglist在下方

    "	rename.vim：在Vim中为文件重命名。
    "	vim-coffee-script：在Vim中舒心 的编写、编译Coffeescript。
    "	vim-mkdir：当你在Vim中新建文件的时候， 自动帮你创建不存在的目录。
    "	vim-surround：快速的删除、修改和添加 括号、引号、XML标签等等。
    "	matchit：用%去在两个对应的字符间跳转。
    "	tComment：快速注释、反注释代码。
    "	emmet-vim：Emmet的Vim版。
    "	tabular：快速对齐。
    "	snipmate.vim：快速的代码片段。
    "	vim-easymotion：在文件中快速定位。
    "	vim-instant-markdown：Vim中对 Markdown文档的实时预览。

    "	delimitMate 用于补全括号和引号
    "	vim-surround 用于快速切换括号/引号或者标签
    "	GitGutter 实时显示git更改
    "	Gitv 查看Git详细提交日志(类似gitk)
    "	vim-commentary Vim批量注释工具, 可以注释多行和去除多行注释
    "	indentLine 更加美观的显示缩进对齐线
		"Bundle 'minibufexpl.vim'
		Bundle 'taglist.vim'
		Plugin 'scrooloose/nerdtree'
		Plugin 'Xuyuanp/nerdtree-git-plugin'
		Bundle 'winmanager'
		Plugin 'numbers.vim'
		Plugin 'tpope/vim-fugitive'
		"Plugin 'Lokaltog/vim-easymotion'
		Plugin 'easymotion/vim-easymotion'
		Plugin 'tpope/vim-rails.git'
		Plugin 'godlygeek/tabular'
		"Bundle "vim-scripts/TabBar"
		Bundle 'majutsushi/tagbar.git'
		Plugin 'tpope/vim-git'

		Bundle 'Yggdroot/indentLine'
		"Bundle 'gregsexton/gitv'
		"Bundle 'airblade/vim-gitgutter'

		Plugin 'vhda/verilog_systemverilog.vim'
		"Plugin 'vim-airline'
		"Bundle "Lokaltog/vim-powerline"
		"""主题 molokai
		Bundle 'tomasr/molokai'
		Bundle 'css_color.vim'
		Bundle 'altercation/vim-colors-solarized'
		Bundle 'gorodinskiy/vim-coloresque' 
		"Plugin 'Taverius/vim-colorscheme-manager'
		Bundle 'terryma/vim-expand-region.git'
		Bundle 'gregsexton/MatchTag' 
		Bundle 'bronson/vim-trailing-whitespace' 
		Bundle 'genoma/vim-less'
		Bundle 'fcitx.vim'
		"""插件fencview.vim来查看和自动识别文件的编码格式 
		Bundle 'FencView.vim'
		Bundle 'sukima/xmledit'
		Bundle 'sjl/gundo.vim'
		Bundle 'tpope/vim-repeat'
		Bundle 'terryma/vim-multiple-cursors'
		Bundle 'klen/python-mode'
		Bundle 'Valloric/ListToggle'
		"""代码括号补全
		" Bundle 'SirVer/ultisnips'
		Bundle 'scrooloose/syntastic'
		Bundle 't9md/vim-quickhl'
		Bundle 'kien/ctrlp.vim'
		Bundle 'ShowPairs'
		Bundle 'jiangmiao/auto-pairs'
		"Bundle 'SirVer/ultisnips'
		"Bundle 'honza/vim-snippets'
		"Bundle 'vim-scripts/ctags.vim'
		"..................................
		"" vim-scripts repos
		""" [YangkRing.vim]:
		""" 它可以将剪切板中的内容保存在文件中，这样你在一个窗口中复制的内容就可以在其他窗口中使用了。
		""" 非常适合在使用SecureCRT等类似远程连接工具中使用。
		Bundle 'YankRing.vim'
		Bundle 'mru.vim'

		Bundle 'vcscommand.vim'
		Bundle 'SudoEdit.vim'
		Bundle 'EasyGrep'

		Bundle 'L9'
		Bundle 'a.vim'
		Bundle 'Mark'
		Bundle 'matrix.vim'
		Plugin 'project.vim'
		"Bundle 'project.vim'
		Bundle 'restart.vim'
		Bundle 'templates.vim'
		"Bundle 'vimim.vim'
		Bundle 'ZenCoding.vim'
	""""""""""""""""""""""""""""""""""""""""
filetype on								" 开启文件类型监测
filetype plugin on						" 开启文件类型插件
filetype plugin indent on
	set wildmode=list:longest			" 命令行模式下一般情况按tab键可以补全当前命令，但是无法显示所有匹配的命令或文件名。
	set wildmenu						" 增强模式中的命令行自动完成操作 补全
	autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
	autocmd FileType python     set omnifunc=pythoncomplete#Complete
	autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
	autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
	autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags
	autocmd FileType java       set omnifunc=javacomplete#Complet
syntax enable							" 开启简单的语法监测
syntax on								" 开启自动语法高亮
" 关于语法syntax
	" :syntax 列出已经定义的语法项
	" :syntax clear 清除已定义的语法规则
	" :syntax case match 大小写敏感，int和Int将视为不同的语法元素
	" :syntax case ignore 大小写无关，int和Int将视为相同的语法元素，并使用同样的配色方案

" -------------------------------------------------------------------------------------------------
""" return OS type, eg: windows, or linux, mac, etc...
function! MySys()
	if has("win16") || has("win32") || has("win64") || has("win95")
		return "windows"
	elseif has("unix")
		return "linux"
	endif
endfunction
" 用户目录变量$VIMFILES
	if  MySys() -- "windows"
		let $VIMFILES = $VIM.'/vimfiles'
	elseif MySys() -- "linux"
		let $VIMFILES = $HOME.'/.vim'
	endif
" 将工作目录切换到当前文件.
nnoremap cwd :cd %:p:h<CR>
"---
" 设定doc文档目录
let helptags=$VIMFILES.'/doc'
" 恢复文件关闭之前光标位置
 if has("autocmd")
 	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
 	"---
 	" 设置字体 以及中文支持
 	if has("win32")
 		set guifont=Inconsolata:h12:cANSI
 	endif
 endif
" 恢复文件关闭之前光标位置
	""if has("autocmd")
	"	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
	"endif

""autocmd! bu fwritepost .vimrc source ~/.vimrc
	" autocmd 示例. 请勿使用注释内容.
		" 打开.c类型文件时执行后面的脚本内容
		" autocmd FileType c source ~/.vim/syntax/c.vim
		" 新建.c类型文件时将指定文件内容加入新建文件中
		" autocmd BufNewFile *.c 0r ~/.vim/files/skeletons/c.skel
		" 新建.c类型文件时执行后面的指定命令
		" autocmd BufNewFile *.c normal ctags -R --c++-kinds=+p --fields=+iaS
		" --fields=+lS --extra=+q .
		"When .vimrc is edited, reload it
autocmd BufWritePre,FileWritePre [._]vimrc   ks|call LastModified()|'s


fun LastModified()
    exe "1,$ s/[L]astModified: .*/LastModified:" .
        \ strftime(" %Y-%b-%d %X") . "/e"
endfun

"" My information
	iab xdate <c-r>=strftime("%d-%m-%y %H:%M:%S")<cr>
	iab xname Amir Salihefendic
"" 配置多语言环境
if has("multi_byte")
    " UTF-8 编码
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk

    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif

    if has("win32")
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
        language messages zh_CN.utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" 字体编码设置
"----------------------------------------------------------------
	set encoding=utf-8 			" 语言环境
	" 设置字符编码列表
	set guifontwide=新宋体:h14 " 设置中文的字体
	set guifont=Bitstream_Vera_Sans_Mono:h14:cANSI:b " 设置英文的字体 :b加粗 :i斜体
	"Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)        
	set langmenu=zh_CN.UTF-8
	" 设置打开文件的编码格式  
	set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1,iso-8859-1 
	source $VIMRUNTIME/delmenu.vim	 	"解决菜单乱码
	source $VIMRUNTIME/menu.vim
	" set termencoding = cp936  		"解决consle输出乱码
	language messages zh_CN.utf-8 		"设置中文提示
	set helplang=cn 					"设置中文帮助
	set ambiwidth=double 				"设置为双字宽显示，否则无法完整显示如:☆
" -------------------------------------------------------------------------------------------------
let mapleader=','
" -------------------------------------------------------------------------------------------------

" for vim-expand-region
" -------------------------------------------------------------------------------------------------
"区域扩展功能之一:
	" Ctrl+A全选，Ctrl+C复制，Ctrl+V粘贴
		"map <C-A> ggvG$ 
		"imap <C-A> <Esc>ggvG$
		"vmap <C-C> "+y<Esc>
		"map <C-V> "+p
		"imap <C-V> <Esc>"+pa
"
"区域扩展功能之二:

	"""Bundle 'terryma/vim-expand-regionm
	"map + <Plug>(expand_region_expand)
	"map _ <Plug>(expand_region_shrink)
	"
	"为插件 terryma/vim-expand-region 做按键映射：
	vmap v <Plug>(expand_region_expand)
	vmap <C-v> <Plug>(expand_region_shrink)
	"这样我就可以:
		"
		"按一次 v 选择一个字符。
		"再按一次 v 自动扩展选择一个单词。
		"再按一次 v 自动扩展选择一段代码。
		"…
		"以此类推…
		"按<C-v> 回退上一次的选择操作。
"----------------------------------------------------------------

""----------------------------------------------------------------------------------"
" Buffers操作快捷方式!
""----------------------------------------------------------------------------------"
	nnoremap <C-RETURN> :bnext<CR>
	nnoremap <C-S-RETURN> :bprevious<CR>

	" Tab操作快捷方式!
	nnoremap <C-TAB> :tabnext<CR>
	nnoremap <C-S-TAB> :tabprev<CR>

	" 关于tab的快捷键
	" map tn :tabnext<cr>
	" map tp :tabprevious<cr>
	" map td :tabnew .<cr>
	" map te :tabedit
	" map tc :tabclose<cr>

	" 取消粘贴缩进
	"nmap <leader>p :set paste<CR>
	"nmap <leader>pp :set nopaste<CR>
	" 粘贴模式的开关 
	nnoremap <F1> :set invpaste paste?<CR>
	imap <F1> <C-O>:set invpaste paste?<CR>
	set pastetoggle=<F1>

	" 相当于window下的复制粘贴
	" vnoremap <silent> y "+y
	" vnoremap <silent> p "+p

"设置切换Buffer快捷键"
	 nnoremap <C-tab> :bn<CR>
	 nnoremap <C-s-tab> :bp<CR>
" 窗口切换重映射
	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l

" 映射切换buffer的键位
	 nnoremap [b :bp<CR>
	 nnoremap ]b :bn<CR>
" 映射<leader>num到num buffer
	 map <leader>1 :b 1<CR>
	 map <leader>2 :b 2<CR>
	 map <leader>3 :b 3<CR>
	 map <leader>4 :b 4<CR>
	 map <leader>5 :b 5<CR>
	 map <leader>6 :b 6<CR>
	 map <leader>7 :b 7<CR>
	 map <leader>8 :b 8<CR>
	 map <leader>9 :b 9<CR>
" 插入模式下移动
	inoremap <c-j> <down>
	inoremap <c-k> <up>
	inoremap <c-l> <right>
	inoremap <c-h> <left>
" 屏蔽掉讨厌的F1键
	inoremap <F1> <ESC>
	nnoremap <F1> <ESC>
	vnoremap <F1> <ESC>
" 文件类型轮换:
	" set fileformats=unix,dos,mac
	" nmap <leader>fd :se fileformat=dos<CR>
	" nmap <leader>fu :se fileformat=unix<CR>
" 16进制编辑,码农必备
	" :%!xxd			""16进制编辑
	" :%!xxd -r			"" 文本编辑

" 将工作目录切换到当前文件之一.
	nnoremap cwd :cd %:p:h<CR>
" 将工作目录切换到当前文件之二.
	map <leader>cd :cd %:p:h<cr>

" -------------------------------------------------------------------------------------------------

" 杂项设置
" -------------------------------------------------------------------------------------------------

	 if version >= 700
	   au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
	   au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
	 endif
" -------------------------------------------------------------------------------------------------
"""启用自定义模板插件
" -------------------------------------------------------------------------------------------------
		"由于本身的模板生成器产生一些头文件，comment.vim用于覆盖它们或是连接它们  
		"具体模板生成器调用那些文件，仍需要查找  
	let g:enable_template = 1  
	let g:template_dir = $HOME.'/.vim/template'  
	let g:C_SourceCodeExtensions  = ''		"取消c.vim插件的文件头功能，将由自定义模板代替  
	"由自定义的template.vim插件代替  
	"---
	let template_load=1
	let template_tags_replacing=1
	let T_AUTHOR="Kevin"
	let T_DATE_FORMAT="%Y-%m-%d %H:%m:%S"
"------------------------------------------------------------------------=
" -------------------------------------------------------------------------------------------------
" 杂项设置
" -------------------------------------------------------------------------------------------------
	set rtp+=~/.vim/bundle/vundle/
	"set cursorline					" 下划线方式突出显示当前行
	"set cursorcolumn				" 突出显示当前列，可用Ctrl+m切换是否显示
	set ruler						" 打开状态栏标尺
	":set ruler?　　				" 查看是否设置了ruler，在.vimrc中，使用set命令设制的选项都可以通过这个命令查看
	set softtabstop=4				" 使得按退格键时可以一次删掉 4 个空格
	"set autochdir					" 自动切换当前目录为当前文件所在的目录
	set ignorecase smartcase		" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
	set nowrapscan					" 禁止在搜索到文件两端时重新搜索
	set incsearch					" 输入搜索内容时就显示搜索结果
	set linespace=0
	set hlsearch					" 搜索时高亮显示被找到的文本
	set noerrorbells				" 关闭错误信息响铃
	set novisualbell				" 关闭使用可视响铃代替呼叫
	set t_vb=						" 置空错误铃声的终端代码
	set matchtime=2					" 短暂跳转到匹配括号的时间
	set magic						" 设置魔术
	set hidden						" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
	set guioptions-=T				" 隐藏工具栏
	set guioptions-=m				" 隐藏菜单栏
	set smartindent					" 开启新行时使用智能自动缩进
	set whichwrap+=<,>,h,l				" 允许backspace和光标键跨越行边界  
	set softtabstop=4					" 使得按退格键时可以一次删除4个空格
	set backspace=indent,eol,start		" 不设定的话在插入模式里无法使用退格键 delete和回车符等
	set backspace=2						" 使回格键（backspace）正常处理indent, eol, start等
	set mouse=a							" 设定在任何模式下鼠标都可用
	set noignorecase					" 默认区分大小写
	" set nolinebreak					" 在单词中间断行
	set selection=exclusive				" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
	set selectmode=mouse,key			" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
	set shellcmdflag=-c					" vimdiff 无法使用问题
	set showmatch						" 设置匹配模式，高亮显示匹配的括号
	set showtabline=1					" 显示标签页菜单
	" set softtabstop=4					" 使得按退格键时可以一次删除4个空格
	set matchtime=5						" 匹配括号高亮的时间（单位是十分之一秒）   
	set shiftwidth=4					" 缩进所表示的空格数(不同于TAB，是利用>>缩进的大小，自动缩进也看这个值)
	set scrolloff=3						" 设定光标离窗口上下边界3行时窗口自动滚动
	"-------------------------------------
	" The following are commented out as they cause vim to behave a lot
	set autowrite						" 自动把内容写回文件: 如果文件被修改过，
	"set backupcopy=no					" 设置备份时的行为为覆盖
	" set nobackup						" 覆盖文件时不备份
	"set backup							" 覆盖文件时不备份
	"set backupdir=~/tmp/backup/vimrcbak	"指定配置文件的备份路径
	" 在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；
	" 用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。

	set linebreak						" 整词换行
	set whichwrap=b,s,<,>,[,]			" 光标从行首和行末时可以跳到另一行去
	set number							" set nu [nonu]显示绝对行号
	set numberwidth=3
	set relativenumber					" set rnu [nornu]相对行号，可用Ctrl+n在相对/绝对行号间切换
"--命令行设置--
	set cmdheight=2						" 设定命令行的行数为1
	set wrap							" 自动换行显示
	set showcmd							" 在状态栏显示目录所执行的指定，未完成的指令片段也会显示出来
	set showmode						" 命令行显示vim当前模式
	set hlsearch						" 搜索时高亮显示被找到的文件
	set shortmess=atI					" 去掉欢迎界面
	set report=0						" 通过使用: commands命令，告诉我们文件的哪一行被改变过  
	" set nohlsearch					" 搜索时不高亮显示被找到的文本
	"set t_ti= t_te=					" 退出vim后，内容显示在终端屏幕 设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制好处：
	"
	"#######################################################################################
	" set expandtab						" 将tab键转换为空格
	  set history=100					" 设置冒号命令和搜索命令历史列表长度为50
	  set undolevels=5000
	" set nolinebreak					" 在单词中间断行
	  set tabstop=4						" TAB键所表示的空格数(这个值只能管tab显示出来的宽度，不管缩进)
	"----------------------------------------------------------------------------------------
	set smartcase						" 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
	set autoindent						" 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
	set cindent							" 使用 C/C++ 语言的自动缩进方式
	set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     "设置C/C++语言的具体缩进方式
	set matchtime=5						" 匹配括号高亮的时间（单位是十分之一秒）   
	set whichwrap=b,s,<,>,[,]			" 光标从行首和行末时可以跳到另一行去
	""---------------------------------------------------------------------------------------
	"	" 在处理未保存或只读文件的时候，弹出确认
	set formatoptions=tcq				" 
	set formatoptions+=mM				" 使得注释换行时自动加上前导的空格和星号
    " set formatoptions-=cro			" 取消注释换行时自动加上前导的空格和星号
		"formatoptions参数说明
		"选项 formatoptions 确定了跟文本格式化有关的基本选项，常用的数值有：
		"	" t：根据 textwidth=72 时自动折行；
		"	" c：在（程序源代码中的）注释中自动折行，插入合适的注释起始字符；
		"	" r：插入模式下在注释中键入回车时，插入合适的注释起始字符；
		"	" q：允许使用“gq”命令对注释进行格式化；
		"	" n：识别编号列表，编号行的下一行的缩进由数字后的空白决定（与“2”冲突，需要“autoindent”）；
		"	" 2：使用一段的第二行的缩进来格式化文本；
		"	" l：在当前行长度超过 textwidth 时，不自动重新格式化；
		"	" m：在多字节字符处可以折行，对中文特别有效（否则只在空白字符处折行）；
		"	" M：在拼接两行时（重新格式化，或者是手工使用“J”命令），如果前一行的结尾或后一行的开头是多字节字符，则不插入空格，非常适合中文
"--------------------------------------------------------------------------------------
" -------------------------------------------------------------------------------------------------
" 折叠功能
" -------------------------------------------------------------------------------------------------
	set foldenable               " 开始折叠
	set foldmethod=indent		 " 设置默认的折叠方式[1/6] 
	"set foldmethod=syntax       " 设置语法折叠
	"set foldcolumn&		     " 关闭折叠树的显示
	set foldcolumn=2             " 设置显示折叠树的深度
	setlocal foldlevel=0         " 设置正文折叠层数
	"set foldlevelstart=99		 " 打开文件是默认不折叠代码
	"set foldclose=all           " 设置为自动关闭折叠                            
	hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey
    hi FoldColumn guibg=black guifg=grey20 ctermfg=7 ctermbg=8
	nnoremap <silent><space>  @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>		
								 " 用空格键来开关折叠
	" [6]种折叠方式：
		""manual            手工定义折叠
		""indent            更多的缩进表示更高级别的折叠
		""expr              用表达式来定义折叠
		""syntax             用语法高亮来定义折叠
		""diff              对没有更改的文本进行折叠
		""marker            对文中的标志折叠
	""基本操作:
		" zi 打开关闭折叠
		" zv 查看此行
		" zm 关闭折叠
		" zM 关闭所有
		" zr 打开
		" zR 打开所有
		" zc 折叠当前行
		" zo 打开当前折叠
		" zd 删除折叠
		" zD 删除所有折叠
		" 如果使用了indent方式，vim会自动的对大括号的中间部分进行折叠，我们可以直接使用这些现成的折叠成果。
		" 在可折叠处（大括号中间）：
		" zc       折叠
		" zC       对所在范围内所有嵌套的折叠点进行折叠
		" zo       展开折叠
		" zO       对所在范围内所有嵌套的折叠点展开
		" [z       到当前打开的折叠的开始处。
		" ]z       到当前打开的折叠的末尾处。
		" zj       向下移动。到达下一个折叠的开始处。关闭的折叠也被计入。
		" zk      向上移动到前一折叠的结束处。关闭的折叠也被计入。
		" 当使用marker方式时，需要用标计来标识代码的折叠，系统默认是{{{和}}}，最好不要改动之：）
		" 我们可以使用下面的命令来创建和删除折叠：
		" zf      创建折叠，比如在marker方式下：
		" zf56G，创建从当前行起到56行的代码折叠；
		" 10zf或10zf+或zf10↓，创建从当前行起到后10行的代码折叠。
		" 10zf-或zf10↑，创建从当前行起到之前10行的代码折叠。
		" 在括号处zf%，创建从当前行起到对应的匹配的括号上去（（），{}，[]，<>等）。
		" zd      删除 (delete) 在光标下的折叠。仅当 'foldmethod' 设为 "manual" 或 "marker" 时有效。
		" zD     循环删除 (Delete) 光标下的折叠，即嵌套删除折叠。
		" 仅当 'foldmethod' 设为 "manual" 或 "marker" 时有效。
		" zE     除去 (Eliminate) 窗口里“所有”的折叠。
		" 仅当 'foldmethod' 设为 "manual" 或 "marker" 时有效。
		" 用 zm, zr 这两个指令来增加或减少折叠的层数,级别越高的折叠的越深（即越不容易被显示）
		" 
		" 手动折叠:
		" 	:mkview		"保存手动创建的折叠视图"
		" 	:loadview	"加载保存的视图"
"-------- -------------------------------------------------------------------------

"设置命令行和状态栏
	set laststatus=2					" 显示状态栏(默认值为1，无法显示状态栏)
""--------------------------------------------状态栏 -----------------------------------------------
""状态栏颜色"
	highlight StatusLine cterm=none  ctermfg=black ctermbg=blue
	highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
	highlight LineNr  ctermfg=yellow  ctermbg=black  guifg=red        "行号列"

	hi StatuslineBufNr     cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#840c0c guifg=#ffffff
	hi StatuslineFlag      cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#bc5b4c guifg=#ffffff
	hi StatuslinePath      cterm=none    ctermfg=white  ctermbg=green   gui=none guibg=#8d6c47 guifg=black
	hi StatuslineFileName  cterm=none    ctermfg=white  ctermbg=blue    gui=none guibg=#d59159 guifg=black
	hi StatuslineFileEnc   cterm=none    ctermfg=white  ctermbg=yellow  gui=none guibg=#ffff77 guifg=black
	hi StatuslineFileType  cterm=bold    ctermbg=white  ctermfg=black   gui=none guibg=#acff84 guifg=black
	hi StatuslineTermEnc   cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#77cf77 guifg=black
	hi StatuslineChar      cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#66b06f guifg=black
	hi StatuslineSyn       cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#60af9f guifg=black
	hi StatuslineRealSyn   cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#5881b7 guifg=black
	"hi StatusLine          cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#3f4d77 guifg=#729eb0 
	hi StatuslineTime      cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#3a406e guifg=#000000
	hi StatuslineSomething cterm=reverse ctermfg=white  ctermbg=darkred gui=none guibg=#c0c0f0 guifg=black
	hi StatusLineNC        cterm=none    ctermfg=gray   ctermbg=black   gui=none guibg=#304050 guifg=#70a0a0

" 获取当前路径，将$HOME转化为~
function! CurDir()
	let curdir = substitute(getcwd(), $HOME, "~", "g")
	return curdir
endfunction
function! HighlightSearch()  
      if &hls  
          return 'H'  
      else  
          return ''  
      endif  
endfunction  
"""""""""""""""""""""""""""""""""""
"""    状态栏样式之一:
"""""""""""""""""""""""""""""""""""
"set statusline=-%{mode()}-[%-3.3n]\ %F%m%r%h\ \|\ \ PWD:\%{CurDir()}\ \ %=\|\ %c\ %2p%%\ \|\ ASCII=%-3b,HEX=%-2B%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\%{hostname()}\ 
"set statusline=-%{mode()}-[%n]\ %F%m%r%h%w\ \|\ \ PWD:\%{CurDir()}\ \ %=\|\ %c\ %2p%%\ \|\ %{&ff}\ \|\ \%y\ \ASC:%-3b,HEX:%-2B%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\%{hostname()}\ 

	 set statusline=  
	 "set statusline+=%7*
	 set statusline+=-%{mode()}-         " 当前模式                      "
	 set statusline+=[%n]                " 当前缓冲区号                  "
	 set statusline+=\ %t                " 当前文件名(无路径)                    "
	 set statusline+=[%M%r%h%w]          " 是否有修改,可读,帮助文档,预览窗口            "
	 set statusline+=\ \|                " 个性'|'分隔符                 "
	 set statusline+=\ %{fugitive#statusline()}							" 当前目录在git的路径
	 set statusline+=\ \PWD:\%{CurDir()} " 当前文件路径                  "
	 set statusline+=\%=                  " 左右对齐分隔符,中间留空       "
	 set statusline+=\%<                  " 当位置不足时,此后部分可以隐去 "
	 set statusline+=\ %3c               " 光标所在列号                  "
	 set statusline+=\ %2p%%             " 光标行位置百分比              "
	 set statusline+=\ [%l/%L]           " 光标所在行号/文件总行数       "
	 set statusline+=\ P:%o              " 光标所在字符数                "
	 set statusline+=\ \|                " 分隔符'|'                     "
	 set statusline+=\ %{&fileformat}    " 文件系统类型                  "
	 set statusline+=\ %y                " 当前文件类型                  "
	 set statusline+=\ \|
	 set statusline+=\ ASC:%-4b
	 set statusline+=\ HEX:%-3B
	 set statusline+=\ %{&encoding}      " 字符集编码类型                "
	 set statusline+=\ \|
	 set statusline+=\ %{$USER}          " 当前用户名                    "
	 set statusline+=@%{hostname()}\     " 当前PC设备名                  "
	 set statusline+=
	 set statusline+=
	 set statusline+=
	 set statusline+=
	 set statusline+=
	 set statusline+=
	" set statusline+=
	" set statusline+=
"""""""""""""""""""""""""""""""""""
"""    状态栏样式之二:
"""""""""""""""""""""""""""""""""""
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ " 设置在状态行显示的信息
"
"""""""""""""""""""""""""""""""""""
"""    状态栏样式之三:
"""""""""""""""""""""""""""""""""""
	" set statusline=
	" set statusline+=%7*\ [%n]                                 "buffernr  
	" set statusline+=%1*\ %<%F\                                "文件路径  
	" set statusline+=%2*\ %y\                                  "文件类型  
	" set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "编码1  
	" set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "编码2  
	" set statusline+=%4*\ %{&ff}\                              "文件系统(dos/unix..)   
	" set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "语言 & 是否高亮，H表示高亮?  
	" set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "光标所在行号/总行数 (百分比)  
	" set statusline+=%9*\ col:%03c\                            "光标所在列  
	" set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Read only? Top/bottom  
"""""""""""""""""""""""""""""""""""
"""格式说明:
"	%-0{minwid}.{maxwid}{item}
	""设置在状态 行 显示的信 息如下：
				"   %F              "当前文件名
				"   %t              "当前文件名(无路径)
				"   %o              "当前光标所在位置的字符数
				"   %O              "当前光标所在位置的字符偏移(十六进制)
				"   %m              "当前文件修改状态
				"   %n              "当前BUFFER序列号
				"   %h              "当前文件是帮助文档
				"   %r              "当前文件是否只读
				"   %w              "当前文件是否预览窗口
				"   %Y              "当前文件类型
				"   %{&fileformat}  "当前文件编码
				"   %b              "当前光标处字符的ASCII码值
				"   %B              "当前光标处字符的十六进制值
				"   %l              "当前光标行号
				"   %c              "当前光标列号
				"   %V              "当前光标虚拟列号(根据字符所占字节数计算)
				"   %p              "当前行占总行数的百分比
				"   %%              "百分号
				"   %L              "当前文件总行数
				"   %<				"当窗口宽度不足显示全部状态栏时，此 item 之后部分可隐藏
				"   %=				"空白扩展，即让此item之前的靠左边显示，此item之后的靠右边显示，中间留空
" -------------------------------------------------------------------------------------------------
"nnormap <silent> <Space>: nohlsearch<Bar>:echo<CR>			" 按空格关闭高亮 清空所有已经显示的
"noremap <F4> :set hlsearch! hlsearch?<CR>					" 按F4键在高亮与不高亮之间快速切换
nnoremap <silent> <CR> :nohlsearch<CR><CR>
" 按回车，临时返回高亮搜索

"--------------------------------------------------------------------------
"""powerline
"--------------------------------------------------------------------------

"--------------------------------------------------------------------------
"vim-airline
"--------------------------------------------------------------------------
		"Plugin 'vim-airline'    
		 "let g:airline_theme="molokai" 
	
		set laststatus=2   	" //使得状态栏和命令行分开Always show the statusline
		set encoding=utf-8 	" Necessary to show Unicode glyphs
		set t_Co=256 		" Explicitly tell Vim that the terminal supports 256 colors
		let g:molokai_original = 1
		" 设置consolas字体"前面已经设置过
		" set guifont=Consolas\ for\ Powerline\ FixedD:h11
	
		if !exists('g:airline_symbols')
			let g:airline_symbols = {}
		endif
		" 关闭状态显示空白符号计数
		let g:airline#extensions#whitespace#enabled     = 0
		let g:airline#extensions#whitespace#symbol      = '!'
		" 使用powerline打过补丁的字体
		let g:airline_powerline_fonts                   = 1
		" 开启tabline
		let g:airline#extensions#tabline#enabled        = 1
		" tabline中当前buffer两端的分隔字符
		let g:airline#extensions#tabline#left_sep       = ' '
		" tabline中未激活buffer两端的分隔字符
		let g:airline#extensions#tabline#left_alt_sep   = '|'
		" tabline中buffer显示编号
		let g:airline#extensions#tabline#buffer_nr_show = 1
		let g:airline#extensions#tagbar#enabled         = 1
		let g:airline#extensions#syntastic#enabled      = 1

	"" unicode symbols
		 let g:airline_left_sep           = '▶'
		 let g:airline_right_sep          = '◀'
		 let g:airline_left_alt_sep       = '❯'
		 let g:airline_right_alt_sep      = '❮'
		 let g:airline_symbols.linenr     = '␤'
		 let g:airline_symbols.branch     = '⎇'
		 let g:airline_symbols.paste      = 'ρ'
		 let g:airline_symbols.whitespace = 'Ξ'
		 let g:airline_symbols.readonly   = ''

"--------------------------------------------------------------------------
" color scheme "配色方案
"--------------------------------------------------------------------------
	" 命令:color或:colorscheme后回车查看当前的颜色主题
	" 多窗口分隔符颜色设置
	hi VertSplit    term=reverse        cterm=reverse          gui=none             guibg=Grey10      guifg=White 
	" Tab 标签栏颜色设置
	highlight TabLine term=underline cterm=bold ctermfg=9 ctermbg=4
	highlight TabLineSel term=bold cterm=bold ctermbg=Red ctermfg=yellow
	" 自动补全颜色设置
	highlight Pmenu ctermbg=darkred
	highlight PmenuSel ctermbg=red ctermfg=yellow
	" 函数名样式颜色设置
	highlight Function cterm=bold,underline ctermbg=red ctermfg=green
	" 对齐线样式颜色设置
	let g:indent_guides_start_level = 2
	let g:indent_guides_guide_size  = 1
	" 颜色列表
		" Aliceblue        " Antiquewhite  " Aqua           " Aquamarine     " Azure          " Beige                " Bisque            " Black           " Blanchedalmond  " Blue
		" Blueviolet       " Brown         " Burlywood      " Cadetblue      " Chartruse      " Chocolate            " Coral             " Cornflowerblue  " Cornsilk        " Crimson
		" Cyan             " Darkblue      " Darkcyan       " Darkgoldenrod  " Darkgray       " Darkgreen            " Darkkhaki         " Darkmagenta     " Darkolivegreen  " Darkorange
		" Darkorchid       " Darksalmon    " Darkseagreen   " Darkslateblue  " Darkslategray  " Darkturquoise        " Darkviolet        " Deeppink        " Deepskyblue     " Dimgray
		" Dodgerblue       " Firebrick     " Floralwhite    " Forestgreen    " Fuchsia        " Gainsboro            " Ghostwhite        " Gold            " Goldenrod       " Gray
		" Green            " Greenyellow   " Honeydew       " Hotpink        " Indianred      " Indigo               " Ivory             " Khaki           " Lavender        " Lavenderblush
		" lawngreen        " Lemonchiffon  " Lightblue      " Lightcoral     " Lightcyan      " Lightgoldenrodyellow " Lightgreen        " Lightgrey       " Lightpink       " Lightsalmon
		" Lightseagreen    " Lightskyblue  " Lightslategray " Lightsteelblue " Lightyellow    " Lime                 " Limegreen         " Linen           " Magenta         " Maroon
		" Mediumaquamarine " Mediumblue    " Mediumorchid   " Mediumpurple   " Mediumseagreen " Mediumslateblue      " Mediumspringgreen " Mediumturquoise " Mediumvioletred " Midnightblue
		" Mintcream        " Mistyrose     " Moccasin       " Navajowhite    " Navy           " Oldlace              " Olive             " Olivedrab       " Orange          " Orangered
		" Orchid           " Palegoldenrod " Palegreen      " Paleturquoise  " Palevioletred  " Papayawhip           " Peachpuff         " Peru            " Pink            " Plum
		" Powderblue       " Purple        " Red            " Rosybrown      " Royalblue      " Saddlebrown          " Salmon            " Sandybrown      " Seagreen        " Seashell
		" Sienna           " Silver        " Skyblue        " Slateblue      " Slategray      " Snow                 " Springgreen       " Steelblue       " Tan             " Teal
		" Thistle          " Tomato        " Turquoise      " Violet         " Wheat          " White                " Whitesmoke        " Yellow          " Yellowgreen
		"
	" 配置说明符
		" Cursor        " 光标下的字符颜色    
		" CursorLine    " 光标所在行颜色    
		" ErrorMsg      " 命令行出现的错误信息提示    
		" IncSearcg     " 被搜索字符的颜色    
		" Normal        " 普通字符    
		" Pmenu         " 弹出的提示条目颜色    
		" PmenuSel      " 弹出的提示条目中被选中条目的颜色    
		" SpellBad      " 拼写错误字符颜色    
		" Visual        " 可视化模式下选中字符的颜色    
		" Menu          " 菜单栏的颜色字体    
		" Scrollbar     " 滚动条的颜色
"--------------------------------------------------------------------------
"
" -------------------------------------------------------------------------------------------------
" for winManager
" -------------------------------------------------------------------------------------------------
	let g:AutoOpenWinManager   = 0
	let g:NERDTree_title       = "[NERDTree]"
	let g:bufExplorerMaxHeight = 30
	let tagbar_width           = 30
	"""FileExplorer|TagList
	let g:winManagerWindowLayout  = 'MiniBufExpl,NERDTree|TagList'
	" let g:winManagerWindowLayout  = 'NERDTree|TagList'
	let g:WM_Auto_Exit_OnlyWindow = 1
	let g:winManagerWidth         = 30 "设置winmanager的宽度，默认为25
	" 自动退出winManager
	autocmd bufenter * if (winnr("$") -- 2 && exists("b:NERDTreeType") &&b:NERDTreeType -- "primary")  | qa | endif 
	nmap wm :WMToggle<cr>
	" wincmd L  "winmanager 窗口在左侧显示"

	function! NERDTree_Start()  
		exec 'NERDTree'  
	endfunction  
	  
	function! NERDTree_IsValid()  
		return 1  
	endfunction  
	""" toggle showing the explorer plugins.
	"function! <SID>ToggleWindowsManager()
	"	if IsWinManagerVisible()
	"		call s:CloseWindowsManager()
	"	else
	"		call s:StartWindowsManager()
	"		exe 'q'
	"	end
	"endfunction

" -------------------------------------------------------------------------------------------------
" for project
"--------------------------------------------------------------------------
nmap <silent> <Leader>P <Plug>ToggleProject

	"	1、打开project

	"	 vim +Project 或
	"	vim登陆后输入命令：Project 
	"	2、导入文件列表

	"	\C(递归读取子目录) \c(读取当前文件)
	"	按照提示填写：
	"	Enter the name of the Entry: <Description>
	"	Enter the Absolute Directory to Load:  {projpath}
	"	Enter the CD parameter: [{options}] 之一
	"	Enter the File Filter: [{options}] 之一
	"	导入文件列表时忽略{、}、 空行、 #

	"	3、列表显示格式

	"	 <Description>={projpath} [{options}] {
	"	 [ filename ]
	"	 [ project_entry ]
	"	 }
	"	<Description>描述
	"	{options}配置参数项
	"		CD={p ath}
	"		in={filename}
	"		out={filename}
	"		filter="{pat}" 文件类型
	"		flags={flag}

	"	4、打开列表文件

	"	:Project 默认列表文件
	"	:Project {file}
	"	列表文件默认存储地址：~/.vimprojects

	"	5、常用命令

	"	\l(列出所有当前层文件)\L(递归),按任何键停止
	"	\w(关闭当前层文件)\W(递归)
	"	\g(在项目当前层文件搜索)\G(递归)
	"	\r关闭子文件夹并刷新当前文件夹下文件，\R递归打开文件夹并刷新所有文件
	"	s关闭文件夹并创建，S递归打开文件夹并创建
	"	\s将文件在水平打开多个窗口显示，打开或关闭文件夹列表
	"	\o将文件在一个窗口打开，打开或关闭文件夹列表
	"	\v在右窗口显示指针停留在project窗口的文件内容
	"	<space>空格扩大project窗口的宽度，恢复宽度
	"	\i显示文件或文件夹的设置参数，如filter="*"
	"	\I显示文件或文件夹的决对路径和参数
	"	\1 - \9，\f1-\f9，\F1-\F9执行指定命令，\0查询1-9命令，\f0查询f1-f9，F1-F9命令

" -------------------------------------------------------------------------------------------------
" for Minibufexplorer
" -------------------------------------------------------------------------------------------------
	let g:miniBufExplMapWindowNavVim    = 1
	let g:miniBufExplMapWindowNavArrows = 1
	let g:miniBufExplMapCTabSwitchBufs  = 1
	let g:miniBufExplModSelTarget       = 1
	let g:miniBufExplMoreThanOne        = 0
    let g:bufExplorerDefaultHelp        = 0     " Do not show default help
	" let g:bufExplorerShowRelativePath = 1     " Show relative paths
	" let g:bufExplorerSortBy           = 'mru' " Sort by most recently used
	" let g:bufExplorerSplitRight       = 1     " Split right
	" let g:bufExploreSplitVertical     = 1     " Split vertically
	" let g:bufExploreSplitVerticalSize = 30    " Split Width
	" let g:bufExplorerUseCurrentWindow = 1     " Open in new window
	"
	 fun! FixMiniBufExplorerTitle()
		 if "-MiniBufExplorer-" == bufname("%")
			 setlocal statusline=%-3.3n%1*\|%*
			" setlocal statusline+=\[\-Mini\ Buffers\ Explorer\-\]
			 "setlocal statusline+=%=\ %1*\|%*\ %<%P
			 setlocal hi StatusLine cterm=none  ctermfg=black ctermbg=blue
	         setlocal hi LineNr  ctermfg=yellow  ctermbg=blue guifg=red        "行号列"
		 endif
	 endfun
	"""""""""""""""""""""""""""""""""""
	"  %-3.3n （Buffer 序号）
	"  %1*\|%* ( 以 | 间隔，且 | 的颜色修改为 %1*，| 后状态栏颜色恢复成 %* )
	"  \[\-Mini\ Buffers\ Explorer\-\] ( 重设的 MiniBuffer 标题 ）
	"  %= （空白扩展，即让此item之前的靠左边显示，此item之后的靠右边显示，中间留空）
	"  \ %1*\|%*\  （和之前一样，分隔符）
	"  %< (当窗口宽度不足显示全部状态栏时，此 item 之后部分可隐藏)
	"  %P （显示文件位置百分比）
	"""""""""""""""""""""""""""""""""""
	   " :MiniBufExplorer  " ,mbe
	   " :CMiniBufExplorer " ,mbc
	   " :UMiniBufExplorer " ,mbu
	   " :TMiniBufExplorer " ,mbt

	"----- ------------------------------------------------------------
	" plugin - bufexplorer.vim Buffers切换
	" \be 全屏方式查看全部打开的文件列表
	" \bv 左右方式查看   \bs 上下方式查看
	"-----------------------------------------------------------------
	" 
" -------------------------------------------------------------------------------------------------
"
" -------------------------------------------------------------------------------------------------
" for Tagbar
" -------------------------------------------------------------------------------------------------
	nmap tb :Tagbar<cr>
	let tagbar_ctags_bin  = '/usr/bin/ctags'
	let tagbar_width      = 30
	let g:tagbar_vertical = 30
	let g:Tagbar_title    = "[Tagbar]"
	function! Tagbar_Start()
		exe 'q'  "执行一个退出命令，关闭自动出现的窗口"
		exe 'TagbarOpen'
	endfunction
	 
	function! Tagbar_IsValid()
		return 1
	endfunction

" -------------------------------------------------------------------------------------------------
" for nerd_tree
" -------------------------------------------------------------------------------------------------
	let NERDChristmasTree           = 1							" 让Tree把自己给装饰得多姿多彩漂亮点
	let NERDTreeAutoCenter          = 1           				" 控制光标移动超过一定距离时，是否自动将焦点y调整到屏中心
	let NERDTreeAutoCenterThreshold = 1  							" 与上面配合使用
	" let NERDTreeCaseSensitiveSort = 1    						" 排序时是否大小写敏感
	let NERDTreeHighlightCursorline = 1  							" 是否高亮显示光标所在行
	let NERDTreeBookmarksFile       = "~/.vim/NerdBookmarks.txt"	" 指定书签文件
	let NERDTreeMouseMode           = 2							" 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
	let NERDTreeQuitOnOpen          = 1							" 打开文件后是否关闭NerdTree窗口
	let NERDTreeShowBookmarks       = 1							" 是否默认显示书签列表
	let NERDTreeShowFiles           = 1							" 是否默认显示文件
	let NERDTreeShowHidden          = 0							" 是否默认显示隐藏文件
	let NERDTreeShowLineNumbers     = 1      						" 是否默认显示行号
	" let NERDTreeSortOrder         = " 排序规则，这个就麻烦了，可以用正则表达式
	let NERDTreeStatusline          = 2 " 窗口状态栏
	let NERDTreeIgnore              = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
	let NERDTreeWinPos              = 'left'						" 窗口位置（’left’ or ‘right’）
	let NERDTreeWinSize             = 30							" 窗口宽
	let g:NERDTree_title            = "[NERD Tree]"
	" s/v 分屏打开文件
	let g:NERDTreeMapOpenSplit       = 's'
	let g:NERDTreeMapOpenVSplit      = 'v'
	let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }	

	"autocmd vimenter * NERDTree             			" 自动开启NERDTree窗口
	nnoremap <silent> nt :NERDTreeToggle<CR>:set rnu<cr>			" 设置nt调出窗口
	autocmd bufenter * if (winnr("$") -- 1 && exists("b:NERDTreeType") &&b:NERDTreeType -- "primary") | q | endif " 别无其它时,一起关闭
	"NERDTree快捷键
		""-----------------------------------------------------------------
		" o 打开关闭文件或者目录         t 在标签页中打开
		" T 在后台标签页中打开           ! 执行此文件
		" p 到上层目录                   P 到根目录
		" K 到第一个节点                 J 到最后一个节点
		" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）
		" r 递归刷新当前目录             R 递归刷新当前根目录
		" ? 帮助						 q 关闭
		"-----------------------------------------------------------------
	"切换工作台和目录

		" ctrl + w + h    光标 focus 左侧树形目录
		" ctrl + w + l    光标 focus 右侧文件显示窗口
		" ctrl + w + w    光标自动在左右侧窗口切换
		" ctrl + w + r    移动当前窗口的布局位置
		" o       在已有窗口中打开文件、目录或书签，并跳到该窗口
		" go      在已有窗口 中打开文件、目录或书签，但不跳到该窗口
		" t       在新 Tab 中打开选中文件/书签，并跳到新 Tab
		" T       在新 Tab 中打开选中文件/书签，但不跳到新 Tab
		" i       split 一个新窗口打开选中文件，并跳到该窗口
		" gi      split 一个新窗口打开选中文件，但不跳到该窗口
		" s       vsplit 一个新窗口打开选中文件，并跳到该窗口
		" gs      vsplit 一个新 窗口打开选中文件，但不跳到该窗口
		" !       执行当前文件
		" O       递归打开选中 结点下的所有目录
		" x       合拢选中结点的父目录
		" X       递归 合拢选中结点下的所有目录
		" e       Edit the current dif
		" 双击    相当于 NERDTree-o
		" 中键    对文件相当于 NERDTree-i，对目录相当于 NERDTree-e
		" D       删除当前书签
		" P       跳到根结点
		" p       跳到父结点
		" K       跳到当前目录下同级的第一个结点
		" J       跳到当前目录下同级的最后一个结点
		" k       跳到当前目录下同级的前一个结点
		" j       跳到当前目录下同级的后一个结点
		" C       将选中目录或选中文件的父目录设为根结点
		" u       将当前根结点的父目录设为根目录，并变成合拢原根结点
		" U       将当前根结点的父目录设为根目录，但保持展开原根结点
		" r       递归刷新选中目录
		" R       递归刷新根结点
		" m       显示文件系统菜单
		" cd      将 CWD 设为选中目录
		" I       切换是否显示隐藏文件
		" f       切换是否使用文件过滤器
		" F       切换是否显示文件
		" B       切换是否显示书签
		" q       关闭 NerdTree 窗口
		" ?       切换是否显示 Quick Help
	" 切换标签页
		" 
		" :tabnew [++opt选项] ［＋cmd］ 文件      建立对指定文件新的tab
		" :tabc   关闭当前的 tab
		" :tabo   关闭所有其他的 tab
		" :tabs   查看所有打开的 tab
		" :tabp   前一个 tab
		" :tabn   后一个 tab

" -------------------------------------------------------------------------------------------------
" for TagList
" -------------------------------------------------------------------------------------------------
	if MySys() -- "windows"                " 设定windows系统中ctags程序的位置
		let Tlist_Ctags_Cmd = '"'.$VIMRUNTIME.'/ctags.exe"'
	elseif MySys() -- "linux"              " 设定windows系统中ctags程序的位置
		let Tlist_Ctags_Cmd = '/usr/bin/ctags'
	endif
	let Tlist_Show_One_File          = 1             		" 不同时显示多个文件的tag，只显示当前文件的
	let Tlist_Compart_Format         = 1					"  压缩方式
	let Tlist_Sort_Type              = "name"				" 按照名称排序
	let Tlist_Exit_OnlyWindow        = 1           			" 如果taglist窗口是最后一个窗口，则退出vim
	" let Tlist_Use_SingleClick      = 1         			" 单击tag就跳转
	let Tlist_Use_Left_Window        = 1          			" 在左侧窗口显示taglist窗口
	let Tlist_Auto_Open              = 0               		" 启动VIM自动打开taglist
	let g:Tlist_GainFocus_On_ToggleOpen = 1                 " 0:  打开Taglist时光标停留在原窗口  
	let Tlist_Close_On_Select      	 = 0         			" 选择tag后自动关闭taglist
	let Tlist_File_Fold_Auto_Close = 1					" 多文件时只显示当前文件的tag，其它的tag折叠" 非当前文件，函数列表折叠隐藏
	let Tlist_WinHeight              = 120				" taglist窗口高度
	let Tlist_WinWidth               = 30				" taglist窗口宽度
	let Tlist_Max_Submenu_Items		 = 5				" 控制菜单条目数
	let Tlist_Max_Tag_Length		 = 8				" 所显示tag名字的长度
	let Tlist_Enable_Fold_Column	 = 1
	let Tlist_Compact_Format		 = 1				" 减少标签列表窗口中的空白行 
	" let Tlist_Use_Horiz_Window     = 1				" 设置taglist窗口横向显示
	let Tlist_Process_File_Always    = 1 				" 实时更新tags
	nnoremap tl :TlistOpen<CR>					
															" 设置tl调出taglist
															" map <F3> :TlistToggle <CR>

" -------------------------------------------------------------------------------------------------
" for ctags 
" -------------------------------------------------------------------------------------------------
	"方式之一:
	" 映射,tg执行ctags命令
	nmap <silent> ,ctg :!ctags -R --c++-kinds=+p --fields=+iaS --fields=+lS --extra=+q .<cr><cr>
	vmap <silent> ,ctg :!ctags -R --c++-kinds=+p --fields=+iaS --fields=+lS --extra=+q .<cr><cr>
	"方式之二:
	" 映射F4执行ctags命令
	"map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
	"imap <F4> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
	" [tags file]"add current directory's generated tags file
	" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
	set tags+=./tags
	"set tags+=/usr/include/tags
	set tags+=./tags 
	"set tags+=/usr/include/c++/tags
	set tags+=/home/kevin/pjc/tags

		"""taglist功能
		""		<CR>          跳到光标下tag所定义的位置，用鼠标双击此tag功能也一样
		""		o             在一个新打开的窗口中显示光标下tag
		""		<Space>       显示光标下tag的原型定义
		""		u             更新taglist窗口中的tag
		""		s             更改排序方式，在按名字排序和按出现顺序排序间切换
		""		x             taglist窗口放大和缩小，方便查看较长的tag
		""		+             打开一个折叠，同zo
		""		-             将tag折叠起来，同zc
		""		*             打开所有的折叠，同zR
		""		=             将所有tag折叠起来，同zM
		""		[[            跳到前一个文件
		""		]]            跳到后一个文件
		""		q             关闭taglist窗口
		""		<F1>          显示帮助

""""""""""""""""""""""""""""
" -------------------------------------------------------------------------------------------------
" for MRU
" -------------------------------------------------------------------------------------------------
	""""""""""""""""""""""""""""
	" ------------------------------------------------------------------------------------------------=
	" let MRU_File='/root/.vim/config/_vim_mru_files'				" 把记录保存在哪
	" let MRU_Max_Entries=10											" 最多保存多少条记录
	" let MRU_Window_Height=8										" 设置MRU窗口高度
	" let MRU_Use_Current_Window=0									" 设置是否让MRU窗口独点一页
	"映射F2打开和关闭MRU窗口，bufloaded是判断缓冲是否加载
	map <expr> <F2> bufloaded("__MRU_Files__")?"q":":MRU\<cr>" 
	"
	"
	"
" -------------------------------------------------------------------------------------------------
" lookupfile.vim 插件设置
" -------------------------------------------------------------------------------------------------
	let g:LookupFile_MinPatLength           = 2 "最少输入2个字符才开始查找
	let g:LookupFile_PreserveLastPattern    = 0 "不保存上次查找的字符串
	let g:LookupFile_PreservePatternHistory = 1 "保存查找历史
	let g:LookupFile_AlwaysAcceptFirst      = 1 "回车打开第一个匹配项目
	let g:LookupFile_AllowNewFiles          = 0 "不允许创建不存在的文件
	let g:LookupFile_SortMethod             = "" "关闭对搜索结果的字母排序
	"if filereadable("/home/ganquan/linux-2.6.34-rc4/filenametags") "设置tag文件的名字
	"let g:LookupFile_TagExpr ='"/home/ganquan/linux-2.6.34-rc4/filenametags"'
	"endif

""""""""""""""""""""""""""""
" for SearchComplete
" -------------------------------------------------------------------------------------------------
 "SearchComplete : Tab completion of words inside of a search ('/')

""""""""""""""""""""""""""""
" -------------------------------------------------------------------------------------------------
" for Omincppcomplete 自动补全, 借助L9库(vim 函数库)
" -------------------------------------------------------------------------------------------------
		" 使用这个插件时, 需要用
		" ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
		" 这样的命令来生成tags文件.
		" 其中
		" 		--c++-kinds=+p : 为C++文件增加函数原型的标签
		" 		--fields=+iaS :  在标签文件中加入继承信息(i)、类成员的访问控制信息(a)、以及函数的指纹(S)
		" 		--extra=+q : 为标签增加类修饰符。注意，如果没有此选项，将不能对类成员补全
	let OmniCpp_NamespaceSearch     = 1
	let OmniCpp_GlobalScopeSearch   = 1
	let OmniCpp_ShowAccess          = 1
	let OmniCpp_ShowPrototypeInAbbr = 1				" 显示函数参数列表
	let OmniCpp_MayCompleteDot      = 1 			" 输入 .  后自动补全
	let OmniCpp_MayCompleteArrow    = 1 			" 输入 -> 后自动补全
	let OmniCpp_MayCompleteScope    = 1 			" 输入 :: 后自动补全
	let OmniCpp_DefaultNamespaces   = ["std"]
	let OmniCpp_SelectFirstItem     = 2 			" select first item (but don't insert)
	let OmniCpp_DisplayMode         = 1
" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() -- 0|silent! pclose|endif
" 自动补全Ctrl+p时的一些选项：多于一项时显示菜单，最长选择，显示当前选择的额外信息
if v:version >= 700
	"关掉智能补全时的预览窗口
	set completeopt=menu,longest,preview
endif

" -------------------------------------------------------------------------------------------------
" for grep.vim
" -------------------------------------------------------------------------------------------------
nnoremap <silent><F3> :Rgrep<CR>
" -------------------------------------------------------------------------------------------------

" -------------------------------------------------------------------------------------------------
" for cscope setting 之一.
" -------------------------------------------------------------------------------------------------
	set cscopequickfix=s-,c-,d-,i-,t-,e-
	set cscopetag
	map <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	" 1 / g 查找本定义
	map <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	" 2 / d 查找本函数调用的函数
	map <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
	" 3 / c 查找调用本函数的函数(call)
	map <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	" 4 / t 查找本字符串(text)
	map <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	" 6 / e 查找egrep模式
	map <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	" 7 / f 查找本文件
	map <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	" 8 / i 查找包含本文件的文件(include)
	map <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>				
	" -------------------------------------------------------------------------------------------------
	 if has("cscope")
		set csprg=/usr/bin/cscope
	    set csto=1
	    set cst
		set cspc=3
	    set nocsverb
	    if filereadable("cscope.out")
	        cs add cscope.out
		else  
			let cscope_file=findfile("cscope.out", ".;")  
			let cscope_pre=matchstr(cscope_file, ".*/")  
			if !empty(cscope_file) && filereadable(cscope_file)  
				exe "cs add" cscope_file cscope_pre  
			endif 
	    endif
	    set csverb
	    " s: C语言符号  g: 定义     d: 这个函数调用的函数 c: 调用这个函数的函数
	    " t: 文本       e: egrep模式    f: 文件     i: include本文件的文件
	    nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
	    nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
	    nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
	    nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
	    nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
	    nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
	    nmap <leader>si :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
	    nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
	endif

" -------------------------------------------------------------------------------------------------
" for syntastic  " 多语言语法检查
" -------------------------------------------------------------------------------------------------
	"""Bundle 'scrooloose/syntastic'
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
	let g:syntastic_error_symbol = '✗'      "set error or warning signs
	let g:syntastic_warning_symbol = '⚠'
	let g:syntastic_enable_highlighting = 0
	let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
	let g:syntastic_javascript_checkers = ['jsl', 'jshint']
	let g:syntastic_html_checkers=['tidy', 'jshint']
	let g:syntastic_cpp_include_dirs = ['/usr/include/']
	let g:syntastic_cpp_remove_include_errors = 1
	let g:syntastic_cpp_check_header = 1
	let g:syntastic_cpp_compiler = 'clang++'
	let g:syntastic_cpp_compiler_options = '-std=C++11 -stdlib=libstdc++'
	let g:syntastic_enable_balloons = 1 "whether to show balloons
	highlight SyntasticErrorSign guifg=white guibg=black

	"  :nmap <F5> :cl<CR>                " 此命令用于查看所有的编译错误.
	"  :imap <F5> <ESC><F5>
	"
	"  :nmap <F6> :cc<CR>                " 此命令用于查看当前的编译错误.
	"  :imap <F6> <ESC><F6>
	"
	"  :nmap <F7> :cn<CR>                " 此命令用于跳到下一个出错位置.
	"  :imap <F7> <ESC><F7>
	"
	"  :nmap <F8> :cp<CR>                " 此命令用于跳到上一个出错位置.
	"  :imap <F8> <ESC><F8>


" -------------------------------------------------------------------------------------------------
" for YcmCompleterMe " 代码自动补全
" -------------------------------------------------------------------------------------------------
		"迄今为止用到的最好的自动VIM自动补全插件
		"重启 :YcmRestartServer
		""Bundle 'Valloric/YouCompleteMe'
		"youcompleteme  默认tab  s-tab 和自动补全冲突
		"let g:ycm_key_list_select_completion=['<c-n>']
		let g:ycm_key_list_select_completion = ['<Down>']
		"let g:ycm_key_list_previous_completion=['<c-p>']
		let g:ycm_key_list_previous_completion = ['<Up>']
		let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
		let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
		let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
		let g:ycm_cache_omnifunc = 0        " 禁止缓存匹配项,每次都重新生成匹配项
		let g:ycm_collect_identifiers_from_comments_and_strings = 0   "注释和字符串中的文字也会被收入补全
		let g:ycm_seed_identifiers_with_syntax = 0   "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
		"let g:ycm_collect_identifiers_from_tags_files = 1 "会导致一直更新标签，python2 占用内存80%以上
		" 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
		" old version
		"if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
		"    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
		"endif
		" new version
		if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
			let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
		endif

	" 直接触发自动补全
		"let g:ycm_key_invoke_completion = '<C-Space>'
		" 跳转到定义处, 分屏打开
		let g:ycm_goto_buffer_command = 'horizontal-split'
		" nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
		nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
		nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>


	" 黑名单,不启用
		let g:ycm_filetype_blacklist = {
			  \ 'tagbar' : 1,
			  \ 'gitcommit' : 1,
			  \}		

" -------------------------------------------------------------------------------------------------
" for gundo
" -------------------------------------------------------------------------------------------------
	" edit history, 可以查看回到某个历史状态
	"Bundle 'sjl/gundo.vim'
	nnoremap <leader>h :GundoToggle<CR>
	"
 
" -------------------------------------------------------------------------------------------------
" for indentLine  ""这个插件安装成功后就会显示缩进对齐线
" -------------------------------------------------------------------------------------------------
map <leader>il :IndentLinesToggle<CR>
"--------------------------------------------------------------------------
" 特殊符号的显示与输入
"--------------------------------------------------------------------------
"" 特殊字符的输入
	" :h digraphs-use  " 查看帮助
	" :dig[raphs]     " 显示特殊字符列表
	" 在--INSERT--下<CTRL> + K ，然后输入两个字母来完成对特殊字母的输入。
	" 4! →  ┊
	" tk →  ث
" 去折叠行横线'-'
	"se fcs=vert:\ 
	" 换折叠行符号为下横线'_'
	se fcs=vert:\|,fold:_
	"在被分割的窗口间显示空白，便于阅读
	set fillchars=vert:\| ,stl:\ ,stlnc:\ 
	" --------------------------------------
" 对齐中的TAB 与 SPACE;
		" 设置将Tab显示为|(竖线)，将行尾的空格显示为-(减号)
	" 显示tab和空格
	set list " 设置tab和空格样式
	" 注意\后面有空格，设置完成后，按tab缩进即可。
	set lcs=tab:\¦\ ,nbsp:%,trail:-
	highlight LeaderTab ctermbg=black ctermfg=blue guifg=#666666    " 匹配行首tab
	match LeaderTab /^\t/
	" --------------------------------------
	"set list!  """显示/隐藏 TAB键以及空格等不可见字符
	"set list		""显示/隐藏 TAB键以及空格等不可见字符
	"set listchars=tab:>-,eol:$		""将TAB设为>---可见字符
" 有关的帮助入口：
	"	:tab h 'fcs'
	"	:tab h 'foldtext'
"

" -------------------------------------------------------------------------------------------------
" for Ultisnips
" -------------------------------------------------------------------------------------------------
	" 代码片段快速插入 (snippets中,是代码片段资源,需要学习)
	"" Snippets are separated from the engine. Add this if you want them:


		let g:UltiSnipsExpandTrigger       = "<tab>"
		let g:UltiSnipsJumpForwardTrigger  = "<tab>"
		let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
		let g:UltiSnipsSnippetDirectories  = ['UltiSnips']
		let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
		" 定义存放代码片段的文件夹 .vim/UltiSnips下，使用自定义和默认的，将会的到全局，有冲突的会提示
		" 进入对应filetype的snippets进行编辑
		map <leader>us :UltiSnipsEdit<CR>
	" ctrl+j/k 进行选择
		func! g:JInYCM()
			if pumvisible()
				return "\<C-n>"
			else
				return "\<c-j>"
			endif
		endfunction


		func! g:KInYCM()
			if pumvisible()
				return "\<C-p>"
			else
				return "\<c-k>"
			endif
		endfunction
		inoremap <c-j> <c-r>=g:JInYCM()<cr>
		au BufEnter,BufRead * exec "inoremap <silent> " . g:UltiSnipsJumpBackwordTrigger . " <C-R>=g:KInYCM()<cr>"
		let g:UltiSnipsJumpBackwordTrigger = "<c-k>"

" -------------------------------------------------------------------------------------------------
" for Easy motion 
" -------------------------------------------------------------------------------------------------
	let g:EasyMotion_smartcase = 1			""智能区分大小写功能
	let g:EasyMotion_leader_key = 'f'
	"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
	map <Leader><leader>h <Plug>(easymotion-linebackward)
	map <Leader><Leader>j <Plug>(easymotion-j)
	map <Leader><Leader>k <Plug>(easymotion-k)
	map <Leader><leader>l <Plug>(easymotion-lineforward)
	" 重复上一次操作, 类似repeat插件, 很强大
	map <Leader><leader>. <Plug>(easymotion-repeat)
	" <Leader>f{char} to move to {char}
	map  <Leader>f <Plug>(easymotion-bd-f)
	nmap <Leader>f <Plug>(easymotion-overwin-f)
	" s{char}{char} to move to {char}{char}
	nmap s <Plug>(easymotion-overwin-f2)
	" Move to line
	map <Leader>L <Plug>(easymotion-bd-jk)
	nmap <Leader>L <Plug>(easymotion-overwin-line)
	" Move to word
	map  <Leader>w <Plug>(easymotion-bd-w)
	nmap <Leader>w <Plug>(easymotion-overwin-w)

" -------------------------------------------------------------------------------------------------
" for Ctrlp
" -------------------------------------------------------------------------------------------------
" 文件搜索
	" change to https://github.com/ctrlpvim/ctrlp.vim
	""Bundle 'ctrlpvim/ctrlp.vim'
	let g:ctrlp_map = '<leader>p'
	let g:ctrlp_cmd = 'CtrlP'
	map <leader>f :CtrlPMRU<CR>
	"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
	let g:ctrlp_custom_ignore = {
		\ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
		\ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
		\ }
	"\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	let g:ctrlp_working_path_mode=0
	let g:ctrlp_match_window_bottom=1
	let g:ctrlp_max_height=15
	let g:ctrlp_match_window_reversed=0
	let g:ctrlp_mruf_max=500
	let g:ctrlp_follow_symlinks=1

	" ctrlp插件1 - 不用ctag进行函数快速跳转
	""Bundle 'tacahiroy/ctrlp-funky'
	nnoremap <Leader>fu :CtrlPFunky<Cr>
	" narrow the list down with a word under cursor
	nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
	let g:ctrlp_funky_syntax_highlight = 1
	let g:ctrlp_extensions = ['funky']

" -------------------------------------------------------------------------------------------------
" for vim maps
" -------------------------------------------------------------------------------------------------
"vim的map:
"命令格式：
	" :map {lhs} {rhs}
	" {rhs} 之前可能显示一个特殊字符:
	"  . 表示它不可重映射
	"  & 表示仅脚本的局部映射可以被重映射
	"  @ 表示缓冲区的局部映射
	" 其含义是，在:map作用的模式中把键系列 {lhs} 映射为 {rhs}，{rhs}可进行映射扫描，也就是可递归映射
	" <k0> - <k9> 小键盘 0 到 9
	" <S-...> Shift＋键
	" <C-...> Control＋键
	" <M-...> Alt＋键 或 meta＋键
	" <A-...> 同 <M-...>
	" <Esc> Escape 键
	" <Up> 光标上移键
	" <Space> 插入空格
	" <Tab> 插入Tab
	" <CR> 等于<Enter>
" map的模式
	" :map        普通，可视模式及操作符等待模式
	" :vmap        可视模式
	" :nmap        普通模式
	" :omap        操作符等待模式
	" :map!        插入和命令行模式
	" :imap        插入模式
	" :cmap        命令行模式
	"	
" 特殊参数:
	" :noremap和map命令相对，作用模式和命令格式都相同，只不过不允许再对{rhs}进行映射扫描。它一般用于重定义一个命令，
	" :unmap是对应取消:map绑定的｛lhs｝，作用模式相同，命令格式 :unmap {lhs}。
	" :mapclear时对应取消所有:map绑定的，慎用！
	" <buffer>如果这些映射命令的第一个参数是<buffer>，映射将只局限于当前缓冲区（也就是你此时正编辑的文件）内。
			 "比如： :map <buffer> ,w /a<CR> "它的意思时在当前缓冲区里定义键绑定，“,w”将在当前缓冲区里查找字符a。
	" <silent>是指执行键绑定时不在命令行上回显
	" <expr>. 如果定义新映射的第一个参数是<expr>，那么参数会作为表达式来进行计算，结果使用实际使用的<rhs>
	" <unique>一般用于定义新的键映射或者缩写命令的同时检查是否该键已经被映射，如果该映射或者缩写已经存在，则该命令会失败
	" <Leader>和<mapleader>变量 mapleader变量对所有map映射命令起效，它的作用是将参数<leader>替换成mapleader变量的值，
	" <LocalLeader>和<Leader>类似，只不过它只作用于缓冲区。
	"-Tips:
		"有很多的映射，用：map  可以查看当前的映射情况，
		"但是想更改的时候却不知道去哪里更改
		"比如说想要看看<C-H>是被哪个文件配置的
		"--可以用下面这条命令
		"""--->>>:verbose map <C-H>
		" 查找vim中某个键映射的定义：
		":verbose 命map <所要查找的快捷键>  
	"-------------命---------------------------------------------------------=
	"		标识符命		含义			等价于			十进制数值		~
	"-------------" ----------------------------------------------------------
		"	<Nul>        零            CTRL-@     0 (存储为 10) *<Nul>*
		"	<BS>        退格键            CTRL-H     8    *backspace*
		"	<Tab>        制表符            CTRL-I     9    *tab* *Tab*
		"								*linefeed*
		"	<NL>        换行符            CTRL-J     10 (用作 <Nul>)
		"	<FF>        换页符            CTRL-L     12    *formfeed*
		"	<CR>        回车符            CTRL-M     13    *carriage-return*
		"	<Return>    同 <CR>                    *<Return>*
		"	<Enter>        同 <CR>                    *<Enter>*
		"	<Esc>        转义            CTRL-[     27    *escape* *<Esc>*
		"	<Space>        空格                 32    *space*
		"	<lt>        小于号            <     60    *<lt>*
		"	<Bslash>    反斜杠            \     92    *backslash* *<Bslash>*
		"	<Bar>        竖杠            |    124    *<Bar>*
		"	<Del>        删除                127
		"	<CSI>        命令序列引入        ALT-Esc    155    *<CSI>*
		"	<xCSI>        图形界面的 CSI                 *<xCSI>*

		"	<EOL>        行尾 (可以是 <CR>、<LF> 或 <CR><LF>，
		"			根据不同的系统和 'fileformat' 而定)    *<EOL>*

		"	<Up>        光标上移键            *cursor-up* *cursor_up*
		"	<Down>        光标下移键            *cursor-down* *cursor_down*
		"	<Left>        光标左移键            *cursor-left* *cursor_left*
		"	<Right>        光标右移键            *cursor-right* *cursor_right*
		"	<S-Up>        Shift＋光标上移键
		"	<S-Down>    Shift＋光标下移键
		"	<S-Left>    Shift＋光标左移键
		"	<S-Right>    Shift＋光标右移键
		"	<C-Left>    Control＋光标左移键
		"	<C-Right>    Control＋光标右移键
		"	<F1> - <F12>    功能键 1 到 12            *function_key* *function-key*
		"	<S-F1> - <S-F12> Shift＋功能键 1 到 12        *<S-F1>*
		"	<Help>        帮助键
		"	<Undo>        撤销键
		"	<Insert>    Insert 键
		"	<Home>        Home                *home*
		"	<End>        End                *end*
		"	<PageUp>    Page-up                *page_up* *page-up*
		"	<PageDown>    Page-down            *page_down* *page-down*
		"	<kHome>        小键盘 Home (左上)        *keypad-home*
		"	<kEnd>        小键盘 End (左下)        *keypad-end*
		"	<kPageUp>    小键盘 Page-up (右上)        *keypad-page-up*
		"	<kPageDown>    小键盘 Page-down (右下)        *keypad-page-down*
		"	<kPlus>        小键盘 +            *keypad-plus*
		"	<kMinus>    小键盘 -            *keypad-minus*
		"	<kMultiply>    小键盘 *            *keypad-multiply*
		"	<kDivide>    小键盘 /            *keypad-divide*
		"	<kEnter>    小键盘 enter            *keypad-enter*
		"	<kPoint>    小键盘 小数点            *keypad-point*
		"	<k0> - <k9>    小键盘 0 到 9            *keypad-0* *keypad-9*
		"	<S-...>        Shift＋键            *shift* *<S-*
		"	<C-...>        Control＋键            *control* *ctrl* *<C-*
		"	<M-...>        Alt＋键 或 meta＋键        *meta* *alt* *<M-*
		"	<A-...>        同 <m-...>            *<A-*
		"	<D-...>        Command＋键 (只用于苹果机)    *<D-*
		"	<t_xx>        termcap 里的 "xx" 入口键
"-----------------------------------------------------------------------


" 获取当前文件名	2016-09-17

" 获取当前时间，精确到分
	fun! ShowFuncName()  
	  let lnum = line(".")  
	  let col = col(".")  
	  echohl ModeMsg  
	  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))  
	  echohl None  
	  call search("\\%" . lnum . "l" . "\\%" . col . "c")  
	endfun  
"-----------------------------------------------------------------------
"map f :call ShowFuncName() <CR>  
"解决普通情况tab键被占用问题
"在打开编辑器时，如果不需要补全功能，可以按shift+tab
let g:SuperTabMappingForward = "<tab>"
let g:SuperTabMappingBackward= "s-tab"

" -------------------------------------------------------------------------------------------------
"  C，C++ 按F9编译运行
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <F9> :wq<CR> :! gcc -g  -Wall -o <c-r>=expand("%:p:r")<cr>  <c-r>=expand("%:p")<cr>  <cr>
" -------------------------------------------------------------------------------------------------
" 添加文件说明信息
" -------------------------------------------------------------------------------------------------
	nnoremap <silent> <C-S-2> ggi/***
		\*******************************************************************************
		\<CR>*<CR>*   FileName    :   
		\<CR>*<CR>*   Author      :  
		\<CR>*<CR>*   Created     : 
		\<CR>*<CR>*   Description :
		\<CR>*<CR>*
		\*******************************************************************************/
		\<CR><CR>

	inoremap <silent> <C-S-1> <ESC>ggi/***
		\*******************************************************************************
		\<CR>*<CR>*   FileName    :    
		\<CR>*<CR>*   Author      :   
		\<CR>*<CR>*   Created     :  
		\<CR>*<CR>*   Description :
		\<CR>*<CR>*
		\*******************************************************************************/
		\<CR><CR> 
" -------------------------------------------------------------------------------------------------
" 添加自定义代码段.
" -------------------------------------------------------------------------------------------------
" [C] main 函数代码块.
	nnoremap ,ma i#include <stdio.h><CR><CR>int main(int argc, char *argv[])<CR>{<CR>return 0;<ESC>v=o}<ESC>v=kO
" [C] switch-case代码块
" -------------------------------------------------------------------------------------------------
" 添加函数说明信息
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <F4> i<CR>/***
	\*******************************************************************************
	\<CR>*<CR>*   Function    :    
	\<CR>*<CR>*   Input       :    
	\<CR>*<CR>*   Output      :    
	\<CR>*<CR>*   Return      :    
	\<CR>*<CR>*   Description :
	\<CR>*<CR>*   Author      : 
	\<CR>*<CR>*
	\*******************************************************************************/
	\<CR>

inoremap <silent> <F4> <CR>/***
	\*******************************************************************************
	\<CR>*<CR>*   Function    :    
	\<CR>*<CR>*   Input       :    
	\<CR>*<CR>*   Output      :    
	\<CR>*<CR>*   Return      :    
	\<CR>*<CR>*   Description :
	\<CR>*<CR>*   Author      : 
	\<CR>*<CR>*
	\*******************************************************************************/
	\<CR>

" -------------------------------------------------------------------------------------------------
"" 添加自定义代码块注释，以区别是自己添加的代码
" -------------------------------------------------------------------------------------------------
	"nnoremap <silent> <C-F 5> O
    "			\/* madao Start  <C-R>=GetDateTime()<ESC> */<ESC>o
	"			\/* madao End <C-R>=GetDateTime()<ESC> */<ESC>O
	"
	"inoremap <silent> <C-F5> <ESC>O
	"			\/* madao Start  <C-R>=GetDateTime()<ESC> */<ESC>o
	"			\/* madao End <C-R>=GetDateTime()<ESC> */<ESC>O
	"
	"vnoremap <silent> <F5> dO
	"			\#if 0    // madao Comment Start <C-R>=GetDateTime()<ESC><ESC>o
	"			\#endif   // madao Comment End   <C-R>=GetDateTime()<ESC><ESC>O<CR><ESC>p
	"
	"nnoremap <silent> <F5> O
	"			\#if 0    // madao Comment Start <C-R>=GetDateTime()<ESC><ESC>o
	"			\#endif   // madao Comment End   <C-R>=GetDateTime()<ESC><ESC>O
	"
	"inoremap <silent> <F5> <ESC>O
	"			\#if 0    // madao Comment Start <C-R>=GetDateTime()<ESC><ESC>o
	"		 	\#endif   // madao Comment End   <C-R>=GetDateTime()<ESC><ESC>O
	"
	"
" -------------------------------------------------------------------------------------------------
""Python 注释
" -------------------------------------------------------------------------------------------------
	" function InsertPythonComment()
	"     exe 'normal'.1.'G'
	"     let line = getline('.')
	"     if line =~ '^#!.*$' || line =~ '^#.*coding:.*$'
	"         return
	"     endif
	"     normal O
	"     call setline('.', '#!/usr/bin/env python')
	"     normal o
	"     call setline('.', '# -*- coding:utf-8 -*-')
	"     normal o ...
" -------------------------------------------------------------------------------------------------
" 括号自动补全之一: (,",',{,［
	nnoremap  <silent>  { i{}<ESC>i
	inoremap <silent> { {}<ESC>i
	inoremap { {<CR>}<ESC>kA<CR>
 
	nnoremap <silent> [ i[]<ESC>i
	inoremap <silent> [ []<ESC>i

	nnoremap <silent> ( i()<ESC>i
	inoremap <silent> ( ()<ESC>i

	""noremap  <silent> " i""<ESC>i
	""inoremap <silent> " ""<ESC>i

	""noremap  <silent> ' i''<ESC>i
	""inoremap <silent> ' ''<ESC>i

	"noremap  <silent> < i<><ESC>i
	"inoremap <silent> < <><ESC>i
" 括号自动补全之二:
	"inoremap  { {}<ESC>i 
	"inoremap { {<CR>}<ESC>kA<CR>
	"inoremap [ []<ESC>i
	"inoremap ( ()<ESC>i
	"inoremap " ""<ESC>i
	"inoremap ' ''<ESC>i
	""inoremap < <><ESC>i
	"
" 代码自动补全:
	"整行补全                        CTRL-X CTRL-L
	"根据当前文件里关键字补全        CTRL-X CTRL-N
	"根据字典补全                    CTRL-X CTRL-K
	"根据同义词字典补全              CTRL-X CTRL-T
	"根据头文件内关键字补全          CTRL-X CTRL-I
	"根据标签补全                    CTRL-X CTRL-]
	"补全文件名                      CTRL-X CTRL-F
	"补全宏定义                      CTRL-X CTRL-D
	"补全vim命令                     CTRL-X CTRL-V
	"用户自定义补全方式              CTRL-X CTRL-U
	"拼写建议                        CTRL-X CTRL-S
" -------------------------------------------------------------------------------------------------
"vim 自带补全
" -------------------------------------------------------------------------------------------------
	"  c-p(c-n)        在编辑模式中, 输入几个字符后再输入此命令则 vi 开始向上(下)搜
	"                  索开头与其匹配的单词并补齐, 不断输入此命令则循环查找. 此命令
	"                  会在所有在这个 vim 程序中打开的文件中进行匹配.
	"
	"  c-x-l           在编辑模式中, 此命令快速补齐整行内容, 但是仅在本窗口中出现的
	"                  文档中进行匹配.
	"
	"  c-x-f           在编辑模式中, 这个命令表示补齐文件名. 如输入:
	"                  /usr/local/tom 后再输入此命令则它会自动匹配出:
	"                  /usr/local/tomcat/
	"
	"  abbr            即缩写. 这是一个宏操作, 可以在编辑模式中用一个缩写代替另一个
	"                  字符串. 比如编写java文件的常常输入 System.out.println, 这很
	"                  是麻烦, 所以应该用缩写来减少敲字. 可以这么做:
	"                  :abbr sprt System.out.println
	"                  以后在输入sprt后再输入其他非字母符号, 它就会自动扩展为System.
	"                  out.println
	""
	"
" -------------------------------------------------------------------------------------------------
"# 文档中的标记和移动
	" .          " 最近编辑的位置
	" 0-9        " 最近使用的文件
	" ∧         " 最近插入的位置
	" '          " 上一次跳转前的位置
	" `          " 上一次退出文件时的位置
	" [          " 上一次修改的开始处
	" ]          " 上一次修改的结尾处
	"# 命令小结
	" m          " 创建标记
	" '          " 移动到标记的文本行首
	" `          " 移动到标记的光标位置
	" :marks     " 列示所有标记
	" :delmarks  " 删除指定标记
	" :delmarks! " 删除所有标记
	" \'.              : 跳到最后修改的那一行 (超级有用)(ft,怎么又是这个评价)
	" `.               : 不仅跳到最后修改的那一行，还要定位到修改点
	" <C-O>            : 依次沿着你的跳转记录向回跳 (从最近的一次开始)
	" <C-I>            : 依次沿着你的跳转记录向前跳
	" :ju(mps)         : 列出你跳转的足迹
	" :help jump-motions
	" :history         : 列出历史命令记录
	" :his c           : 命令行命令历史
	" :his s           : 搜索命令历史
	" q/               : 搜索命令历史的窗口
	" q:               : 命令行命令历史的窗口
	" :<C-F>           : 历史命令记录的窗口
	"
" -------------------------------------------------------------------------------------------------
"  1、简单方向移动
	"       ^:移动光标到行首；  
	"       $:移动光标到行尾；  
	"       ctrl-b:类似于键盘上的"PgUp"(b为backword)  
	"       ctrl-f：类似于键盘上的"PgDn"(f为forword)  
	"       ^:移动光标到行首；
	"       $:移动光标到行尾；
	"       ctrl-b:类似于键盘上的"PgUp"(b为backword)
	"       ctrl-f：类似于键盘上的"PgDn"(f为forword)
"      行操作：
	"       G：移动到末行；  
	"       1G：移动到首行；  
	"       50G：移动到50行；  
	"        H：移动到当前窗口的首行；  
	"        M：移动到当前窗口的中间位置；  
	"        L：移动光标到当前窗口的最后一行；  
	"        G：移动到末行；
	"        1G：移动到首行；
	"        50G：移动到50行；
	"         H：移动到当前窗口的首行；
	"         M：移动到当前窗口的中间位置；
	"         L：移动光标到当前窗口的最后一行；
"  2、单词、句、段落操作
	"  w:光标移动到下一个单词的词首；注：对于中文，连续的多个汉字作为一个word。  
	"  2w:重复执行w操作2次；  
	"  e:光标移动到下一个单词的词尾；  
	"  5e:重复执行e操作5次；  
	"  b：向前移动光标，移动到前一个单词的词首；  
	"  w:光标移动到下一个单词的词首；注：对于中文，连续的多个汉字作为一个word。
	"  2w:重复执行w操作2次；
	"  e:光标移动到下一个单词的词尾；
	"  5e:重复执行e操作5次；
	"  b：向前移动光标，移动到前一个单词的词首；
	"  如果想了解更多，可以在vim Normal模式下输入 ：help word-motions
	"  
"  句字(sentences)直接移动操作：
	"  
	"  ):光标移动到下一句；
	"  (:光标移动到上一句；
	"  3):光标移动到向下3句
"  段落（paragraphs）直接移动操作：
	"  {:向上移动一个段落；
	"  }:向下移动一个段落
	"  3}:向下移动3个段落
	"  更多操作在vim Normal模式下输入 :help cursor-motions
"  标记（mark）：
" -------------------------------------------------------------------------------------------------
"# 选中和删除
" -------------------------------------------------------------------------------------------------
	" df=, yf=, cf=, vf= 从当前字符开始删除(复制,改变,选中),直到遇到=之后
	" dt”, yt”, ct”, vt” 从当前字符开始删除(复制,改变,选中),直到遇到”之前
" -------------------------------------------------------------------------------------------------
"# 删除与替换
" -------------------------------------------------------------------------------------------------
	" 语法为 :[addr]s/源字符串/目的字符串/[option]
		" 
		" 全局替换命令为：:%s/源字符串/目的字符串/g
		"     [addr] 表示检索范围，省略时表示当前行。
		"     如：“1，20” ：表示从第1行到20行；
		"     “%” ：表示整个文件，同“1,$”；
		"     “. ,$” ：从当前行到文件尾；
		"     s : 表示替换操作
		"     [option] : 表示操作类型
		"     如：g 表示全局替换; 
		"     c 表示进行确认
		"     p 表示替代结果逐行显示（Ctrl + L恢复屏幕）；
		"     省略option时仅对每行第一个匹配串进行替换；
		"     如果在源字符串和目的字符串中出现特殊字符，需要用”\”转义
		" 
	" 下面是一些例子：
		" 
		" #将That or this 换成 This or that
		" :%s/\(That\) or \(this\)/\u\2 or \l\1/
		" #将句尾的child换成children
		" :%s/child\([ ,.;!:?]\)/children\1/g
		" #将mgi/r/abox换成mgi/r/asquare
		" :g/mg\([ira]\)box/s//mg//my\1square/g    <=>  :g/mg[ira]box/s/box/square/g
		" #将多个空格换成一个空格
		" :%s/  */ /g
		" #使用空格替换句号或者冒号后面的一个或者多个空格
		" :%s/\([:.]\)  */\1 /g
		" #删除所有空行
		" :g/^$/d
		" #删除所有的空白行和空行
		" :g/^[  ][  ]*$/d
		" #在每行的开始插入两个空白
		" :%s/^/>  /
		" #在接下来的6行末尾加入.
		" :.,5/$/./
		" #颠倒文件的行序
		" :g/.*/m0O  <=> :g/^/m0O
		" #寻找不是数字的开始行,并将其移到文件尾部
		" :g!/^[0-9]/m$ <=> g/^[^0-9]/m$
		" #将文件的第12到17行内容复制10词放到当前文件的尾部
		" :1,10g/^/12,17t$
		" ~~~~重复次数的作用
		" #将chapter开始行下面的第二行的内容写道begin文件中
		" :g/^chapter/.+2w>>begin
		" :/^part2/,/^part3/g/^chapter/.+2w>>begin
		" :/^part2/,/^part3/g/^chapter/.+2w>>begin|+t$
		"
	" 删除空行
		":g/^$/d
		"""删除空行以及只有空格的行
		":g/^\s*$/d
		"""删除以 # 开头或 空格# 或 tab#开头的行
		":g/^\s*#/d
		"""对于 php.ini 配置文件，注释为 ; 开头
		":g/^\s*;/d
		"""使用正则表达式删除行
		""""如果当前行包含 bbs ，则删除当前行
		":/bbs/d
		""""删除从第二行到包含 bbs 的区间行
		":2,/bbs/d
		""""删除从包含 bbs 的行到最后一行区间的行
		":/bbs/,$d
		""""删除所有包含 bbs 的行
		":g/bbs/d
		""""删除匹配 bbs 且前面只有一个字符的行
		":g/.bbs/d
		""""删除匹配 bbs 且以它开头的行
		":g/^bbs/d
		""""删除匹配 bbs 且以它结尾的行
		":g/bbs$/d
		"""".ini 的注释是以 ; 开始的，如果注释不在行开头，那么删除 ; 及以后的字符
		":%s/\;.\+//g
		""""删除 # 之后所有字符
		"%s/\#.*//g
		"
		"
		"":%s/r//g 删除DOS方式的回车^M 
		":%s= *$-- 删除行尾空白 
		":%s/^(.*)n1/1$/ 删除重复行 
		":%s/^.*\n\1/\1$/        : 删除重复行
		":%s/^.pdf/new.pdf/ 只是删除第一个pdf 
		":%s/// 又是删除多行注释（咦？为什么要说「又」呢？） 
		":g/^s*$/d 删除所有空行 :g/^s*$/d 删除所有空行 
		":g!/^dd/d 删除不含字符串'dd'的行 
		":v/^dd/d 同上 （译释：v -- g!，就是不匹配！） 
		":g/str1/,/str2/d 删除所有第一个含str1到第一个含str2之间的行
		"":v/./.,/./-1join 压缩空行 
		"":g/^$/,/./-j 压缩空行

		"删除包含特定字符的行：
		"g/pattern/d   
		" 
		"删除不包含指定字符的行：
		"v/pattern/d
		"g!/pattern/d
		" 
		"现实TAB键以及空格等：
		"set list!
		"删除指定的行：
		":x,.d #从ｘ行删除到当前行；
		":.,xd #从当前行删除到x行；
		":x,.+3d #从x行删除到当前行后第三行；
		":x,.-1d #从x行删除到当前行前一行。
		" :%s/\s*$//ge，将行尾多余空格删除。
		" 
		" 设置fileformat属性，:set ff=dos (\r\n win换行) :set ff=unix (\n unix/linux换行) :set ff=mac (\r Mac换行)
" -------------------------------------------------------------------------------------------------
"# 翻页与移动:
" -------------------------------------------------------------------------------------------------
	" 整页翻页:
	"	ctrl-f 
	"	ctrl-b
	"	f=forword b=backward
	" 
	" 翻半页:
	"	ctrl-d 
	"	ctlr-u
	"	d=down u=up
	" 
	" 滚一行:
	"	ctrl-e 
	"	ctrl-y
	"
	" zz 让光标所在的行居屏幕中央
	" zt 让光标所在的行居屏幕最上一行 t=top
	" zb 让光标所在的行居屏幕最下一行 b=bottom
	" 
	"
" -------------------------------------------------------------------------------------------------
" 当前行移动光标: 0 ^ $ f F t T , ;
" -------------------------------------------------------------------------------------------------
		" 0      → 到行头
		" ^      → 到本行的第一个非blank字符
		" $      → 到行尾
		" g_     → 到本行最后一个不是blank字符的位置。
		" fa     → 到下一个为a的字符处，你也可以fs到下一个为s的字符。
		" t,     → 到逗号前的第一个字符。逗号可以变成其它字符。
		" 3fa    → 在当前行查找第三个出现的a。
		" F (T)  → 和 f 和 t 一样，只不过是相反方向。
	"---------------------------------------------------------
	"0      ^            fi     t)         4fi        g_    $ 
	"|      |     |       |     |           |          |    |
	"       x =  (name_1,vision_3); # this is a comment.
" -------------------------------------------------------------------------------------------------
" -------------------------------------------------------------------------------------------------
" 关于换行
" -------------------------------------------------------------------------------------------------
	" 1. 转换文件换行方式
	" 解决方法：设置fileformat属性，:set ff=dos (\r\n win换行) :set ff=unix (\n unix/linux换行) :set ff=mac (\r Mac换行)
	" 
	" 2. 换行符混排（常见的情况是Win换行和Unix换行混排，VIM中会将文件识别为unix换行，在行尾显示^M）
	" 需求：统一换行符
	" 解决方法：输入:%s/\r//ge,将多余\r去掉，这时全部剩下\n换行然后保存。如果需要保存为win换行设置:set ff=dos再保存即可。


" -------------------------------------------------------------------------------------------------
" for verilog
" -------------------------------------------------------------------------------------------------
	inoremap    <A-a> <ESC>:Allpn<CR>
	map          <A-a> :Allpn<CR>
	inoremap    <A-c> <ESC>:Allcom<CR>
	map          <A-c> :Allcom<CR>
	inoremap    <A-z> <ESC>:Aheader<CR>
	map          <A-z> :Aheader<CR>
	inoremap    <A-l> <ESC>:Acontent<CR>
	map          <A-l> :Acontent<CR>

" -------------------------------------------------------------------------------------------------

"--------------------------------------------------------------------------
" tabularize 自定义对齐方案
"--------------------------------------------------------------------------
	let mapleader=','
	if exists(":Tabularize")
		nmap <Leader>a= :Tabularize /=<CR>
		vmap <Leader>a= :Tabularize /=<CR>
		nmap <Leader>a: :Tabularize /:\zs<CR>
		vmap <Leader>a: :Tabularize /:\zs<CR>
	endif

	inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

	function! s:align()
		let p = '^\s*|\s.*\s|\s*$'
		if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
			let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
			let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
			Tabularize/|/l1
			normal! 0
			call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
		endif
	endfunction

	"--help: 通常会绑定这样一些快捷键：
		 nmap <Leader>a& :Tabularize /&<CR>
		 vmap <Leader>a& :Tabularize /&<CR>
		 nmap <Leader>a= :Tabularize /=<CR>
		 vmap <Leader>a= :Tabularize /=<CR>
		 nmap <Leader>a: :Tabularize /:<CR>
		 vmap <Leader>a: :Tabularize /:<CR>
		 nmap <Leader>a:: :Tabularize /:\zs<CR>
		 vmap <Leader>a:: :Tabularize /:\zs<CR>
		 nmap <Leader>a, :Tabularize /,<CR>
		 vmap <Leader>a, :Tabularize /,<CR>
		 nmap <Leader>a,, :Tabularize /,\zs<CR>
		 vmap <Leader>a,, :Tabularize /,\zs<CR>
		 nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
		 vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

"--------------------------------------------------------------------------
" 快速赋值语句对齐
"--------------------------------------------------------------------------
	Bundle 'junegunn/vim-easy-align'
	vmap <Leader>a <Plug>(EasyAlign)
	nmap <Leader>a <Plug>(EasyAlign)
	if !exists('g:easy_align_delimiters')
	  let g:easy_align_delimiters = {}
	endif
	let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }
"--------------------------------------------------------------------------

"--------------------------------------------------------------------------
" [参考线切换] {{{
"--------------------------------------------------------------------------
" 通过设置cc的值，来显示一条纵向的线作参考线
" 代码如下:快捷键Alt+o向左、Alt+u向左移动参考线
fu! ReferenceLine(t)
    let ccnum = &cc
    if ccnum -- '' | let ccnum = 0 | en
    let csw = &sw
    if a:t -- 'add'
        let ccnum = ccnum + csw
        exec "setl cc=".ccnum
    elsei a:t -- 'sub'
        let ccnum = ccnum - csw
        if ccnum >= 0 | exec "setl cc=".ccnum | en
    en
endf
nn <silent> <A-u> :call ReferenceLine('sub')<CR>
nn <silent> <A-o> :call ReferenceLine('add')<CR>

"--------------------------------------------------------------------------
"快速打开编辑 .vimrc配置文件--->",ee"
"--------------------------------------------------------------------------
	map <silent> <leader>ee :e ~/.vim/vimrc<cr>
	"快速保存文件--->",w"
	" nmap <leader>z :w<CR>
	" nmap <leader>e :q<CR>
	" map <silent> <leader>w :w<cr>
	"快速保存并退出文件--->",w"
	map <silent> <leader>wq :wqall!<cr>
	map <silent> <leader>z :w<cr>
	map <silent> <leader>reg :registers<cr>
	"nnoremap <CR> G       "通过 12<Enter> 跳转到第 12 行 （12G 我觉得不称手）

	" vp doesn't replace paste buffer
	" 避免缓冲区的内容被删除的文本内容所覆盖（放到~/.vimrc文件的最后）
	function! RestoreRegister()
	  let @" = s:restore_reg
	  return ''
	endfunction
	function! s:Repl()
	  let s:restore_reg = @"
	  return "p@=RestoreRegister()<cr>"
	endfunction
	vmap <silent> <expr> p <sid>Repl()
