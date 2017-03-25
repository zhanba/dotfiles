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
Plugin 'scrooloose/nerdtree'

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

set tabstop=4 " number of visual spaces per TAB
set smarttab
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
filetype indent on 
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set fileencodings=utf-8,ucs-bom,GB2312,big5
" Searching {{{
set incsearch " search as characters are entered
set hlsearch " highlight matches
" turn off highlight
nnoremap <Leader><space> :nohlsearch<CR>
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
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\

set backspace=indent,eol,start " set backspace to work

set noerrorbells            " ¹Ø±Õ´íÎóÐÅÏ¢ÏìÁå
set novisualbell            " ¹Ø±ÕÊ¹ÓÃ¿ÉÊÓÏìÁå´úÌæºô½Ð
set t_vb=                   " ÖÃ¿Õ´íÎóÁåÉùµÄÖÕ¶Ë´úÂë

" set colorcolumn=81 " highlight 81 column

" you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first
set hidden 

set nobackup
set noswapfile

" highlight whitespaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

let mapleader="," " leader is comma

" hide
set guioptions-=m " menu bar
set guioptions-=T " toolbar
set guioptions-=r " scrollbar

" on linux
" set guifont=Source\ Code\ Pro\ 10

" on windows
set guifont=Consolas:h11:cANSI
