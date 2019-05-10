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
set autoindent
set showmatch
set scrolloff=3
set switchbuf=useopen
:let mapleader=","
set wildmode=longest,list
set nolist
set autoread
set nojoinspaces
:set timeout timeoutlen=1000 ttimeoutlen=100
"set shell=bash
set encoding=UTF-8
syntax on
set t_Co=256
set term=screen-256color
" set termguicolors
" if &term =~ '256color'
" set t_ut=
" endif

set smartindent
set rtp+=~/.fzf
call plug#begin('~/.vim/plugged')

" ======== INTERFACE SUPPORT  ========
Plug 'scrooloose/nerdtree'
Plug 'justinmk/vim-sneak'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-commentary'
Plug '~/.fzf'
Plug 'mattn/emmet-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'Shougo/neocomplete.vim'
Plug 'Townk/vim-autoclose'
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'
Plug 'sbdchd/neoformat'
Plug 'https://github.com/miconda/lucariox.vim.git'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
" ======== REACT/JSX SUPPORT  ========
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'epilande/vim-react-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ntpeters/vim-better-whitespace'
Plug 'terryma/vim-multiple-cursors'

" ======== VIM THEMES  =======
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'scrooloose/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

" ============ Prettier on save ===========
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
" let g:prettier#config#bracket_spacing = 'true'

" ============ general settings ===========
let base16colorspace="256"
let g:airline_theme='one'
let NERDTreeShowHidden=1
let NERDTreeMapOpenInTab='\t'
colorscheme gruvbox
" colorscheme OceanicNext
" colorscheme dracula
" colorscheme one
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
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase smartcase
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " lol

" ====== SYNTASTIC / GIT GUTTER SETTINGS =======
" set signcolumn="yes"
hi clear signColumn
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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

map <C-o> :NERDTreeToggle<CR>
:nmap <c-S-s> :w<CR>
:imap <c-S-s> <Esc>:w<CR>

:map <C-x-left> :tabp<CR>
:map <C-x-right> :tabn<CR>
:map <c-s> :tabp<cr>
:map <c-x> :tabn<cr>

:map <c-p> :Files<cr>

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" autocommand for sourcing and other tasks
autocmd BufWritePost ~/.zshrc !source ~/.zshrc
autocmd BufWritePost ~/.config/ranger/rc.conf !source ~/.config/ranger/rc.conf
autocmd BufWritePost ~/.vimrc :source %
autocmd BufWritePost ~/.i3/config !i3-msg reload
