"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","           " 定义<leader>键
set clipboard=unnamed         " 共享系统剪切板
set nocompatible              " 设置不兼容原始vi模式
filetype on                   " 设置开启文件类型侦测
filetype plugin on            " 设置加载对应文件类型的插件
set noeb                      " 关闭错误的提示
syntax enable                 " 开启语法高亮功能
syntax on                     " 自动语法高亮
set t_Co=256                  " 开启256色支持
set cmdheight=2               " 设置命令行的高度
set showcmd                   " select模式下显示选中的行数
set ruler                     " 总是显示光标位置
set laststatus=2              " 总是显示状态栏
set number                    " 开启行号显示
set cursorcolumn              " 高亮列
set cursorline                " 高亮显示当前行
"set whichwrap+=<,>,h,l        " 设置光标键跨行
set ttimeoutlen=0             " 设置<ESC>键响应时间
set virtualedit=block,onemore " 允许光标出现在最后一个字符的后面

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent              " 设置自动缩进
set cindent                 " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0 " 设置C/C++语言的具体缩进方式
set smartindent             " 智能的选择对其方式
filetype indent on          " 自适应不同语言的智能缩进
set expandtab               " 将制表符扩展为空格
set tabstop=4               " 设置编辑时制表符占用空格数
set shiftwidth=4            " 设置格式化时制表符占用空格数
set softtabstop=4           " 设置4个空格为制表符
set smarttab                " 在行和段开始处使用制表符
set nowrap                  " 禁止折行
set backspace=2             " 使用回车键正常处理indent,eol,start等
set sidescroll=10           " 设置向右滚动字符数
set fdm=indent              " 设置代码折叠

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件安装LINX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'scrooloose/nerdtree', { 'on':'NERDTreeToggle'}              " 文件列表
Plug 'w0rp/ale'                         " 语法检查
Plug 'joereynolds/gtags-scope'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'
Plug 'chxuan/tagbar'                    " 函数列表
Plug 'jsfaint/gen_tags.vim'
Plug 'skywind3000/vim-preview'
Plug 'kana/vim-textobj-user'            " 文本对象
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'go','py'] }
Plug 'sgur/vim-textobj-parameter'
Plug 'Yggdroot/LeaderF'                 " 神器，函数，文件，搜索
Plug 'easymotion/vim-easymotion'        " 快速移动
Plug 'jiangmiao/auto-pairs'             " 括号补全
Plug 'tpope/vim-endwise'                " endif补全
Plug 'octol/vim-cpp-enhanced-highlight' " C++高亮
Plug 'vim-airline/vim-airline'          " 状态栏？
Plug 'Shougo/echodoc.vim'               " 函数提示
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'                 " 代码片段
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'              " 游标线
Plug 'tpope/vim-surround'               " 成双成对编辑
Plug 'terryma/vim-multiple-cursors'     " 多行编辑
Plug 'lfv89/vim-interestingwords'       " 单词标记
Plug 'mileszs/ack.vim'                  " 快速查找
Plug 'rking/ag.vim'                     " 同ack
Plug 'mbbill/undotree'                  " 后悔药
Plug 'mhinz/vim-startify'
Plug 'Valloric/YouCompleteMe', {'do':'./install.py --clang-completer --go-completer'}
Plug 'tpope/vim-commentary'             " 快速注释
Plug 'junegunn/vim-easy-align'          " 快速对齐
Plug 'luochen1990/rainbow'              " 多彩括号
call plug#end()  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" c++ 语法高亮
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=menu,menuone "关闭自动弹出的函数说明窗口
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-y>'
noremap <c-y> <NOP>
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,go': ['re!\w{2}'],
			\ 'lua': ['re!\w{2}'],
			\ }
let g:ycm_global_ycm_extra_conf= '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0 "导入工程自己的conf时提示确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件树设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>n :NERDTreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale语法检测
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters_explicit = 1 "除g:ale_linters指定，其他不可用
let g:ale_linters = {
\   'cpp': ['cppcheck','clang','gcc'],
\   'c': ['cppcheck','clang', 'gcc'],
\   'python': ['pylint'],
\   'bash': ['shellcheck'],
\   'go': ['golint'],
\}
let g:ale_sign_column_always = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_sign_error = ">>"
let g:ale_sign_warning = "--"
let g:ale_lint_on_enter = 0 "打开文件时不进行检查

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动载入ctags gtags
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'

" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
let g:gutentags_modules += ['gtags_cscope']
endif
"echo g:gutentags_modules
" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 如果使用 universal ctags 需要增加下面一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为 避免多个项目数据库相互干扰 使用plus插件解决问题
let g:gutentags_auto_add_gtags_cscope = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" preview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"预览 quickfix 窗口 ctrl-w z 关闭
"P 预览 大p关闭
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
noremap <C-U> :PreviewScroll -1<cr> " 往上滚动预览窗口
noremap <C-D> :PreviewScroll +1<cr> "  往下滚动预览窗口

"gtags 有问题 debug
"打开一下语句，运行:GutentagsToggleTrace
":messages
let g:gutentags_define_advanced_commands = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ack搜索
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ack
let g:ag_working_path_mode="r"
let g:ackhighlight = 1
let g:ack_qhandler = "botright copen 15"
let g:ack_autoclose = 1
let g:ack_use_cword_for_empty_search = 1


"调用ag进行搜索
if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column'
endif
"nmap <leader>ck :Ack!<space>-i<space>
command! -nargs=* Search call InputAwareAckSearch(<q-args>)
nnoremap <leader>ak :Search<space>
function! InputAwareAckSearch(args)
    if len(a:args) > 0
        " Executes ack by wrapping user input with quotes
        execute ":Ack! '".a:args."'"
    else
        " For no input, executes empty ack, so that word under cursor is searched
        execute ":Ack!"
    endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load 默认配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime macros/matchit.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_section_b = '%{strftime("%m/%d/%Y - %H:%M")}'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>
nnoremap <silent> <leader>rn :set rnu<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
map <leader>o <Plug>(easymotion-bd-w)
nmap <leader>o <Plug>(easymotion-overwin-w)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LeaderF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ft :LeaderfTag<cr>
nnoremap <leader>fl :LeaderfLineAll<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" echodoc.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:echodoc_enable_at_startup = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码片段
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrgger="<leader><tab>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UNDO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ud :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 特殊技能
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif " 打开文件自动定位到最后编辑的位置
let g:rainbow_active = 1
nnoremap zpr :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>:set foldmethod=manual<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 常用快捷键 LINX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
color hybrid
set background=dark
colorscheme monokai

inoremap jk <esc>
nnoremap <leader>w <C-W><C-K>
nnoremap <leader>s <C-W><C-J>
nnoremap <leader>a <C-W><C-h>
nnoremap <leader>d <C-W><C-l>
nnoremap <leader>v :sp<CR>
nnoremap <leader>h :vs<CR>
nnoremap <space><space>  %
nnoremap <leader>z zz
nnoremap <leader>sh :noh<cr>
nnoremap <leader>q :q!<CR>
nnoremap <leader>e :edit $MYVIMRC<cr>           " 编辑vimrc文件
nnoremap <leader><leader>s :source $MYVIMRC<cr>         " 重新加载vimrc文件
" 安装、更新、删除插件
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

" 个性化
if filereadable(expand($HOME . '/.vimrc.local'))
    source $HOME/.vimrc.local
endif
