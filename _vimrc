set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

Plugin 'sjl/badwolf'
Plugin 'vim-scripts/darktango.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
" colorscheme badwolf
colorscheme darktango
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
" vim的菜单乱码解决
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" vim中缩进的设置以及将tab转换成空格
language messages zh_CN.utf-8

set number " show line numbers
set showcmd " show command in bottom bar
set virtualedit=onemore             " Allow for cursor beyond last character
set cursorline " highlight current line
filetype indent on
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
" Searching {{{
set incsearch " search as characters are entered
set hlsearch " highlight matches
" turn off highlight
" nnoremap <Leader><space> :nohlsearch<CR>
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" }}}

" Folding {{{
set foldenable
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=syntax " fold by syntax
" sapce open/close folds
nnoremap <space> za
" }}}

set laststatus=2 " show status bar
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\

set backspace=indent,eol,start  " set backspace to work

" set noerrorbells            " 关闭错误信息响铃
set visualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码

" set colorcolumn=81 " highlight 81 column

" you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first
set hidden

set nobackup
set noswapfile

" This makes vim show the current row and column at the bottom right of the screen
set ruler

" highlight whitespaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set fillchars=diff:⣿,vert:│
" set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮
" set showbreak=↪

let mapleader=',' " leader is comma

" airline config
let g:airline_theme='solarized'
set t_Co=256
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', 'maxlinenr', ':%3v'])
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1 " show bufferline

" hide
set guioptions-=m " menu bar
set guioptions-=T " toolbar
set guioptions-=r " scrollbar
set guioptions-=L " left hand scorllbar

" on linux
" set guifont=Monaco 10

" on windows
" set guifont=Consolas:h11:cANSI
set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI

" gvim window size
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=35 columns=120
  " close visual bell
  autocmd GUIEnter * set vb t_vb=
endif

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
" let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree
" 不显示项目树上额外的信息，例如帮助、提示什么的
" let NERDTreeMinimalUI=1

" ignore directory for ctrlp
let g:ctrlp_custom_ignore = {
   \ 'dir': 'node_modules\|DS_Store\|.git'
   \}

