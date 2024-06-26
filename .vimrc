"
" Thang Nguyen's settings
"

" General Config
set nocompatible
set lazyredraw
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
set encoding=UTF-8
set autoindent
set splitbelow splitright
set t_Co=256
set termguicolors
set rtp+=~/.fzf
" set cursorline  " highlight current line
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
set smartindent
syntax enable
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set t_BE=
set exrc

" Turn off paste mode when leaving insert
" autocmd InsertLeave * set nopaste

" COC CONFIG
set updatetime=300
set shortmess+=c
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" " format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
set tagfunc=CocTagFunc

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.3 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

filetype on
filetype plugin on
filetype indent on


" ======== INTERFACE SUPPORT  ========
Plug 'AndrewRadev/splitjoin.vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-commentary'
Plug '~/.fzf'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Townk/vim-autoclose'
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'
Plug 'sbdchd/neoformat'
Plug 'https://github.com/miconda/lucariox.vim.git'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'dylanaraps/wal.vim'
Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'iamcco/markdown-preview.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'dhruvasagar/vim-table-mode'
Plug 'francoiscabrol/ranger.vim'
Plug 'airblade/vim-rooter'
" Plug 'codota/tabnine-vim'
Plug 'mattn/calendar-vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" ======== REACT/JSX SUPPORT  ========
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'epilande/vim-react-snippets'
Plug 'ntpeters/vim-better-whitespace'

" ======== VIM THEMES  =======
Plug 'chriskempson/base16-vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'sainnhe/everforest'
Plug 'iandwelker/rose-pine-vim'

" ======== TOOLING  =======
" Plug 'vimwiki/vimwiki'

call plug#end()

" ============ Prettier on save ===========
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
let g:prettier#config#bracket_spacing = 'true'

" ============ general settings ===========
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint', 'coc-json', 'coc-json', 'coc-prettier', 'coc-css', 'coc-ultisnips', 'coc-snippets', 'coc-rls', 'coc-pyright']
let base16colorspace="256"
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector

" ============ vimwiki settings ===========
" let g:vimwiki_list = [
"   \{'path': '~/rsync/wiki/', 'syntax': 'markdown', 'ext': 'md'},
"   \{'path': '~/rsync/wiki/mindsumo', 'syntax': 'markdown', 'ext': 'md'},
"   \{'path': '~/rsync/wiki/cover_letters', 'syntax': 'markdown', 'ext': 'md'},
"   \{'path': '~/rsync/wiki/academia', 'syntax': 'markdown', 'ext': 'md'}]
" command! Diary VimwikiDiaryIndex
" augroup vimwikigroup
"     autocmd!
"     " automatically update links on read diary
"     autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
" augroup end
" syn region markdownLinkText matchgroup=markdownLinkTextDelimiter
"   \ start="!\=\[\%(\_[^]]*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@="
"   \ nextgroup=markdownLink,markdownId skipwhite
"   \ contains=@markdownInline,markdownLineStart
"   \ concealends


" ============ colorscheme settings ===========
" colorscheme wal
" colorscheme gruvbox
" colorscheme OceanicNext
" colorscheme one
" colorscheme onedark
" let g:dracula_colorterm = 0
" colorscheme palenight
" colorscheme nord
" colorscheme mountaineer
" colorscheme base16-solarized-dark
" let g:airline_theme='solarized'
" colorscheme base16-darktooth
" colorscheme base16-bespin
" colorscheme base16-dracula
" colorscheme base16-black-metal-venom
" colorscheme base16-gruvbox-dark-soft
" colorscheme base16-atelier-lakeside
" colorscheme base16-atelier-seaside
" colorscheme base16-hopscotch
" colorscheme base16-icy
" colorscheme base16-greenscreen

" let g:airline_theme='base16'
" let g:airline_theme='jellybeans'
let g:airline_theme='minimalist'

" let ayucolor="mirage" "for mirage version of theme"
" let g:airline_theme='ayu_dark'
" let ayucolor="dark"   "for dark version of theme"
" let ayucolor="light"   "for dark light of theme"
" colorscheme ayu

" let g:lightline = { 'colorscheme': 'nightfly' }
" let g:nightflyUnderlineMatchParen = 1
" let g:nightflyCursorColor = 1
" let g:nightflyTerminalColors = 0
" colorscheme nightfly

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
" let g:everforest_transparent_background = 1
" let g:everforest_sign_column_background = 'none'
" let g:everforest_better_performance = 1
" let g:everforest_background = 'medium'
" let g:airline_theme = 'everforest'
" colorscheme everforest

colorscheme rose-pine-dark

set signcolumn=number
highlight clear LineNr
highlight clear SignColumn

" Transparency
" hi Normal guibg=NONE ctermbg=NONE

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
let g:table_mode_corner='|'
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

" ====== FOLD SETTINGS (indent/syntax) =======
set foldmethod=indent
set foldnestmax=2
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
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers= ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:gitgutter_set_sign_backgrounds = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = '\vasciidoc|help|mail|markdown|markdown.pandoc|pandoc|org|rst|tex|text'
" let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD
"TABLINE:
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
let g:airline_section_y=''

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{gutentags#statusline()}

" Mappings
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
inoremap jk <Esc>

map <Leader><Space> :noh<CR>
" map <C-o> :NERDTreeToggle<CR>
map <C-o> :RangerWorkingDirectoryNewTab<CR>
nnoremap <c-s> :w!<CR>
inoremap <c-s> <Esc><Esc>:w!<CR>
" :nmap <c-x> :x<CR>
" :imap <c-x> <Esc>:x<CR>
nnoremap <c-q> :q!<CR>
inoremap <c-q> <Esc>:q!<CR>

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
map <C-k> <C-w>
map <C-h> <C-w>h
map <C-l> <C-w>l
map <Leader>l :vertical resize +3<CR>
map <Leader>h :vertical resize -3<CR>
map <Leader>k :resize +3<CR>
map <Leader>j :resize -3<CR>

nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" JSON format
xnoremap <Leader>s :%!python -m json.tool<CR>

" Goyo Functions
" function! s:goyo_enter()
"   if executable('tmux') && strlen($TMUX)
"     silent !tmux set status off
"     silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
"   endif
"   set noshowmode
"   set noshowcmd
"   set scrolloff=999
"   set laststatus=2
"   " AirlineToggle
" endfunction

" function! s:goyo_leave()
"   if executable('tmux') && strlen($TMUX)
"     silent !tmux set status on
"     silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
"   endif
"   set showmode
"   set showcmd
"   set scrolloff=5
"   quit!
"   " AirlineToggle
" endfunction
" autocmd! User GoyoEnter nested call <SID>goyo_enter()
" autocmd! User GoyoLeave nested call <SID>goyo_leave()
" autocmd! User GoyoEnter nested set eventignore=FocusGained
" autocmd! User GoyoLeave nested set eventignore=

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
" autocmd BufReadPost,BufNewFile *.md silent! :CocDisable
" autocmd BufReadPost,BufNewFile *.md silent! :Goyo
autocmd BufReadPost,BufNewFile *.md silent! :set spell

" FOLD On Save
augroup AutoSaveGroup
  autocmd!
  " view files are about 500 bytes
  " bufleave but not bufwinleave captures closing 2nd tab
  " nested is needed by bufwrite* (if triggered via other autocmd)
  " BufHidden for compatibility with `set hidden`
  autocmd BufWinLeave,BufLeave,BufWritePost,BufHidden,QuitPre ?* nested silent! mkview!
  autocmd BufWinEnter ?* silent! loadview
augroup end

" Key Mappings
" Markdown
inoremap <Leader><Leader><Space> <Esc>/<++><Enter>"_c4l
autocmd FileType pandoc,markdown inoremap ;b ____<Space><++><Esc>F_;i
autocmd FileType pandoc,markdown inoremap ;i __<Space><++><Esc>F_i

" Tabs
set sw=2 ts=2 sts=2 " Default
autocmd FileType html :setlocal sw=2 ts=2 sts=2
autocmd FileType ruby :setlocal sw=2 ts=2 sts=2
autocmd FileType javascript :setlocal sw=2 ts=2 sts=2
autocmd FileType xml :setlocal sw=2 ts=2 sts=2
autocmd FileType python :setlocal sw=4 ts=4 sts=4
autocmd FileType go :setlocal sw=4 ts=4 sts=4

" Make vertical separator pretty
highlight VertSplit cterm=NONE
set fillchars+=vert:\▏

" GUI Setting
" set guifont=Iosevka
" au BufNewFile,BufFilePre,BufRead,BufWinEnter *.md setlocal filetype=markdown
