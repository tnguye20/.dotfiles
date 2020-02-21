"
" Thang Nguyen's settings
"
set nocompatible
set ruler
set hidden
set history=10000
set expandtab
set showtabline=2
set showcmd
set nobackup
set nowritebackup
set showmatch
set scrolloff=3
set switchbuf=useopen
:let mapleader=","
set wildmode=longest,list
set nolist
set autoread
set nojoinspaces
:set timeout timeoutlen=1000
"set shell=bash
set encoding=UTF-8
syntax on
set t_Co=256
set termguicolors
set term=screen-256color
" if &term =~ '256color'
"   set t_ut=256
" endif
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set rtp+=~/.fzf
call plug#begin('~/.vim/plugged')

filetype on
filetype plugin on
filetype indent on

set autoindent
" set smartindent

" ======== INTERFACE SUPPORT  ========
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
" Plug 'justinmk/vim-sneak'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-commentary'
Plug '~/.fzf'
" Plug 'mattn/emmet-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
" Plug 'Shougo/neocomplete.vim'
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Townk/vim-autoclose'
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'
Plug 'sbdchd/neoformat'
Plug 'https://github.com/miconda/lucariox.vim.git'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dylanaraps/wal.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/tpope/vim-surround.git'
" Plug 'iamcco/markdown-preview.vim'
Plug 'vim-pandoc/vim-pandoc'
" Plug 'mhinz/vim-grepper'
Plug 'frazrepo/vim-rainbow'
Plug 'dhruvasagar/vim-table-mode'
" ======== REACT/JSX SUPPORT  ========
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'epilande/vim-react-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ntpeters/vim-better-whitespace'

" ======== VIM THEMES  =======
Plug 'rafi/awesome-vim-colorschemes'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'https://github.com/rakr/vim-one.git'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" ============ Prettier on save ===========
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
" let g:prettier#config#bracket_spacing = 'true'

" ============ general settings ===========
let base16colorspace="256"
let g:airline_theme='one'
let NERDTreeShowHidden=1
" let NERDTreeMapOpenInTab='\t'

" colorscheme wal
" colorscheme gruvbox
" colorscheme OceanicNext
" colorscheme one
" colorscheme onedark
" colorscheme dracula
" colorscheme palenight
" colorscheme nord
" colorscheme base16-default-dark

" let ayucolor="mirage" "for mirage version of theme"
" let ayucolor="dark"   "for dark version of theme"
colorscheme ayu

set cursorline  " highlight current line
set background=dark
highlight LineNr guifg=#aaaaaa " Dracula's colors are too dark dood
set number " show line numbers
set relativenumber
set clipboard=unnamedplus
" set clipboard=unnamed " use os clipboard
set shiftwidth=2 " number of spaces when shift indenting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase smartcase
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " lol

" ====== RAINBOW SETTINGS =======
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" ====== Markdown Table SETTINGS =======
" let g:table_mode_corner='|'
" let g:table_mode_corner_corner='+'
" let g:table_mode_header_fillchar='='

" ====== FOLD SETTINGS (indent/syntax) =======
" set foldmethod=indent
" set foldnestmax=2
set foldcolumn=2
set foldmethod=syntax
set foldlevelstart=1
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
let markdown_folding=1        " markdown
let markdown_enable_folding=1 " markdown

" ====== SYNTASTIC / GIT GUTTER SETTINGS =======
" set signcolumn="yes"
hi clear signColumn
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{gutentags#statusline()}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers= ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
" You gotta add a lint npm script to each package.json you want linting for
set mouse=a

set laststatus=2
set noswapfile
"let g:jsx_ext_required=0
let g:airline#extensions#hunks#non_zero_only = 1

" Mappings
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
inoremap jk <Esc>

map <Leader><Space> :noh<CR>
map <C-o> :NERDTreeToggle<CR>
:nmap <c-s> :w<CR>
:imap <c-s> <Esc><Esc>:w<CR>
" :nmap <c-x> :x<CR>
" :imap <c-x> <Esc>:x<CR>
:nmap <c-q> :q<CR>
:imap <c-q> <Esc>:q<CR>

:map <s-j> <ESC> :tabp<CR>
:map <s-k> <ESC> :tabn<CR>
:map <s-l> <ESC> :m .-2<CR>==
:map <s-h> <ESC> :m .+1<CR>==
:vnoremap <s-l> :m '<-2<CR>gv=gv
:vnoremap <s-h> :m '>+1<CR>gv=gv

:nnoremap <Leader>S :set spell!<CR>
:nnoremap <Leader><Leader>p :set paste!<CR>

:map <c-p> :Files<cr>
:map <c-g> :Goyo<cr>

map <Leader>] :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <Leader>[ :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

map <C-f> :Rg<CR>
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

" autocommand for sourcing and other tasks
autocmd BufWritePost ~/.zshrc !source ~/.zshrc
autocmd BufWritePost ~/.config/ranger/rc.conf !source ~/.config/ranger/rc.conf
autocmd BufWritePost ~/.vimrc :source %
autocmd BufWritePost ~/.config/nvim/init.vim :source %
autocmd BufWritePost ~/.i3/config !i3-msg reload
autocmd BufWritePost ~/.profile :source ~/.profile
autocmd BufWritePost ~/.Xresources !xrdb ~/.Xresources
autocmd BufWritePost *.tex !pdflatex *.tex
" augroup remember_folds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent! loadview
" augroup END
