"
" Thang Nguyen's settings
"

" General Config
set nocompatible
set ruler
set hidden
set history=10000
set expandtab
set showtabline=2
set showcmd
set showmode
set nobackup
set nowritebackup
set showmatch
set scrolloff=3
set switchbuf=useopen
let mapleader=","
set wildmode=longest,list
set nolist
set autoread
set wrap
set linebreak
set nojoinspaces
set timeout timeoutlen=1000
set mouse=a
set laststatus=2
set noswapfile
"set shell=bash
set encoding=UTF-8
set autoindent
set splitbelow splitright
set t_Co=256
set termguicolors
set term=screen-256color
set rtp+=~/.fzf
set cursorline  " highlight current line
set background=dark
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
set ignorecase
set smartcase
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " lol
" if &term =~ '256color'
"   set t_ut=256
" endif
" set smartindent
syntax on
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

call plug#begin('~/.vim/plugged')

filetype on
filetype plugin on
filetype indent on


" ======== INTERFACE SUPPORT  ========
Plug 'chriskempson/base16-vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'nelstrom/vim-visual-star-search'
" Plug 'justinmk/vim-sneak'
" Plug 'tmux-plugins/vim-tmux-focus-events'
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
" Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/tpope/vim-surround.git'
" Plug 'iamcco/markdown-preview.vim'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'mhinz/vim-grepper'
Plug 'frazrepo/vim-rainbow'
Plug 'dhruvasagar/vim-table-mode'
Plug 'francoiscabrol/ranger.vim'
" Plug 'https://github.com/puremourning/vimspector'
" Plug 'airblade/vim-rooter'

" ======== REACT/JSX SUPPORT  ========
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'epilande/vim-react-snippets'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'ntpeters/vim-better-whitespace'

" ======== VIM THEMES  =======
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'drewtempelmeyer/palenight.vim'
" Plug 'https://github.com/rakr/vim-one.git'
" Plug 'ayu-theme/ayu-vim'
" Plug 'arcticicestudio/nord-vim'
" Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" ============ Prettier on save ===========
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
" let g:prettier#config#bracket_spacing = 'true'

" ============ general settings ===========
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint', 'coc-json', 'coc-json', 'coc-prettier', 'coc-css', 'coc-ultisnips', 'coc-snippets']
let base16colorspace="256"
" let NERDTreeShowHidden=1
" let NERDTreeMapOpenInTab='\t'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector
" colorscheme wal
" colorscheme gruvbox
" colorscheme OceanicNext
" colorscheme one
" colorscheme onedark
" let g:dracula_colorterm = 0
" colorscheme palenight
" colorscheme nord
" colorscheme base16-default-dark
" colorscheme base16-solarized-dark
" let g:airline_theme='solarized'
" colorscheme base16-darktooth
" colorscheme base16-bespin
" colorscheme base16-dracula
" let g:airline_theme='dracula'

" let g:airline_theme='base16'
" let g:airline_theme='jellybeans'

let ayucolor="mirage" "for mirage version of theme"
let g:airline_theme='ayu_mirage'
" let ayucolor="dark"   "for dark version of theme"
let g:airline_theme='one'
colorscheme ayu

" set signcolumn="yes"
" set signcolumn=number
highlight clear LineNr
highlight clear SignColumn

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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{gutentags#statusline()}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers= ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:gitgutter_set_sign_backgrounds = 1
" You gotta add a lint npm script to each package.json you want linting for
"let g:jsx_ext_required=0
let g:airline#extensions#tabline#enabled = 1
" let g:airline_section_b='%{getcwd()}'
" let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#formatter = 'default'

" Mappings
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
inoremap jk <Esc>

map <Leader><Space> :noh<CR>
" map <C-o> :NERDTreeToggle<CR>
map <C-o> :RangerWorkingDirectoryNewTab<CR>
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc><Esc>:w<CR>
" :nmap <c-x> :x<CR>
" :imap <c-x> <Esc>:x<CR>
nnoremap <c-q> :q<CR>
inoremap <c-q> <Esc>:q<CR>

noremap <s-j> <ESC> :tabp<CR>
noremap <s-k> <ESC> :tabn<CR>
noremap <s-l> <ESC> :m .-2<CR>==
noremap <s-h> <ESC> :m .+1<CR>==
vnoremap <s-l> :m '<-2<CR>gv=gv
vnoremap <s-h> :m '>+1<CR>gv=gv

nnoremap <Leader>S :set spell!<CR>
nnoremap <Leader><Leader>p :set paste!<CR>

map <c-p> :Files<cr>
map <c-b> :Buffers<cr>
map <c-g> :Goyo<cr>

map <Leader>] :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <Leader>[ :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

map <C-f> :Rg<CR>
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

" Split resize and navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <Leader>l :vertical resize +3<CR>
map <Leader>h :vertical resize -3<CR>
map <Leader>k :resize +3<CR>
map <Leader>j :resize -3<CR>

nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" autocommand for sourcing and other tasks
autocmd BufWritePost ~/.zshrc !source ~/.zshrc
autocmd BufWritePost ~/.config/ranger/rc.conf !source ~/.config/ranger/rc.conf
autocmd BufWritePost ~/.vimrc :source %
autocmd BufWritePost ~/.config/nvim/init.vim :source %
autocmd BufWritePost ~/.i3/config !i3-msg reload
autocmd BufWritePost ~/.profile :source ~/.profile
autocmd BufWritePost ~/.Xresources !xrdb ~/.Xresources

" Compile tex file
autocmd BufWritePost *.tex !pdflatex *.tex

" Put Markdown in Goyo and Disable Coc
autocmd BufReadPost,BufNewFile *.md silent! :CocDisable
autocmd BufReadPost,BufNewFile *.md silent! :Goyo 120
autocmd BufReadPost,BufNewFile *.md silent! :set spell

" augroup remember_folds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent! loadview
" augroup END

" Key Mappings
" Markdown

inoremap <Leader><Leader><Space> <Esc>/<++><Enter>"_c4l
autocmd FileType pandoc,markdown inoremap ;b ____<Space><++><Esc>F_;i
autocmd FileType pandoc,markdown inoremap ;i __<Space><++><Esc>F_i
