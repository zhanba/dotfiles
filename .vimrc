set nocompatible              " be iMproved, required
" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader=',' " leader is comma, should load before plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'epilande/vim-react-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Colors{{{
" colorscheme gruvbox
syntax enable
" }}}

set tabstop=4 " actual width of a tab
set softtabstop=0
set expandtab " tabs are spaces
set shiftwidth=4 " the sizes of an indent, normally equal to tab
set smarttab


set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,GB2312,big5

" vim中缩进的设置以及将tab转换成空格
" language messages zh_CN.utf-8

set number " show line numbers
set showcmd " show command in bottom bar
set virtualedit=onemore             " Allow for cursor beyond last character
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]

" Searching {{{
set incsearch " search as characters are entered
set hlsearch " highlight matches
" turn off highlight
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
" }}}

" set updatetime=250 " vim refresh check time

" set 80 and 120 column warning
"let &colorcolumn="80,".join(range(120,999),",")
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" switch buffer
" previous buffer
nnoremap <Leader>p :bp<cr>
" next buffer
nnoremap <Leader>n :bn<cr>
" delete buffer
nnoremap <Leader>d :bd<cr>
" quit buffer and jump to previous buffer
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Folding {{{
set foldenable
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=syntax " fold by syntax
" sapce open/close folds
nnoremap <space> za
" }}}

set laststatus=2 " show status bar

set backspace=indent,eol,start  " set backspace to work

" set noerrorbells            " 关闭错误信息响铃
set visualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码

" you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first
set hidden

set nobackup
set noswapfile

" This makes vim show the current row and column at the bottom right of the screen
set ruler

"show hidden char
set list
set showbreak=↪
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" set seperator line char
set fillchars=diff:⣿,vert:\ 

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


" Ctrl+N shortcut for open/close nerdtree
map <C-n> :NERDTreeToggle<CR>
" 当不带参数打开Vim时自动加载项目树
" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" 当所有文件关闭时关闭项目树窗格
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree
" 不显示项目树上额外的信息，例如帮助、提示什么的
let NERDTreeMinimalUI=1
"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" ignore directory for ctrlp
let g:ctrlp_custom_ignore = {
   \ 'dir': 'node_modules\|DS_Store\|.git'
   \}


"set jsx syntax for .js file, not just .jsx
let g:jsx_ext_required = 0

"toggle location list and quickfix list
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>f'

" Trigger snippets
 let g:UltiSnipsExpandTrigger="<C-l>"

" setting for powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256"
