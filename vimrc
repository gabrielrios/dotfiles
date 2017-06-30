"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/gabriel/Code/personal/dotfiles/./dein.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/gabriel/Code/personal/dotfiles/./dein.vim')
  call dein#begin('/Users/gabriel/Code/personal/dotfiles/./dein.vim')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/gabriel/Code/personal/dotfiles/./dein.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('wakatime/vim-wakatime')
  call dein#add('vim-scripts/CSApprox', { 'rev': 'a2958096696f9132ef0ece44b3fab93dac6df8d0' })
  call dein#add('vim-scripts/HTML-AutoCloseTag', { 'rev': 'c2f6f59cf5c08dd487ef361f93ba09317a840e25' })
  call dein#add('smeggingsmegger/ag.vim', { 'rev': 'c3d096a0bd638718dd8a0fc80f2edeca82a1dbf9' })
  call dein#add('chriskempson/base16-vim', { 'rev': '01408a8461923ed30957285b00e3da67489c687b' })
  call dein#add('kien/ctrlp.vim', { 'rev': '564176f01d7f3f7f8ab452ff4e1f5314de7b0981' })
  call dein#add('gregsexton/gitv', { 'rev': 'f0616624ee77e3a29a5d5faba02a5453bc45681b' })
  call dein#add('Shutnik/jshint2.vim', { 'rev': 'dfad0431f0475b745cff7d2a4551b3619039edd9' })
  call dein#add('scrooloose/nerdtree', { 'rev': '2e2b649232d6ae4d02d74793e5da0ee08480ad8d' })
  call dein#add('stefandtw/quickfix-reflector.vim', { 'rev': '8f2379082de788aef58be0ed1fdbf8f056d56437' })
  call dein#add('gorkunov/smartgf.vim', { 'rev': '1f4c4c74089a6dad25ddf49f32bf07e662435fbc' })
  call dein#add('AndrewRadev/splitjoin.vim', { 'rev': 'a206dbaddef39ac06aee880fbb7a7256bce92899' })
  call dein#add('scrooloose/syntastic', { 'rev': 'cee74e0c1af934065fd1b3046e53cda76574f703' })
  call dein#add('godlygeek/tabular', { 'rev': '00e1e7fcdbc6d753e0bc8043e0d2546fa81bf367' })
  call dein#add('majutsushi/tagbar', { 'rev': '7b36c46d17d57db34fdb0adac9ba6382d0bb5e66' })
  call dein#add('bling/vim-airline', { 'rev': '4d0c4f6b1e3fee30873b0c9734fbe83f4d74b81c' })
  call dein#add('vim-airline/vim-airline-themes', { 'rev': '796478723c01a275269b96f63ee5cd5b44a342f4' })
  call dein#add('tpope/vim-bundler', { 'rev': 'b42217a20cd4cac5a00096dc4e98d2497c21b3fe' })
  call dein#add('gorodinskiy/vim-coloresque', { 'rev': '0c21b1469993e610600e88e734ffe90b9c10a514' })
  call dein#add('tpope/vim-commentary', { 'rev': '73e0d9a9d1f51b6cc9dc965f62669194ae851cb1' })
  call dein#add('hail2u/vim-css3-syntax', { 'rev': '5c81b99e3e73908d042c76e48f4de1c5ed12bb30' })
  call dein#add('tpope/vim-dispatch', { 'rev': '5f5c22c9ed48ee64fc5f02ac3acd543b97732fe8' })
  call dein#add('Lokaltog/vim-easymotion', { 'rev': '5c6f3cd9a713491e6b32752a05c45198aa91540a' })
  call dein#add('elixir-lang/vim-elixir', { 'rev': '32a1027d90def835f70b6833397182307a417b1c' })
  call dein#add('tpope/vim-endwise', { 'rev': '0067ceda37725d01b7bd5bf249d63b1b5d4e2ab4' })
  call dein#add('tpope/vim-eunuch', { 'rev': '5ee2b82b565e6c6d80f1cb7735c78f66a159b198' })
  call dein#add('tpope/vim-fugitive', { 'rev': '50cc268d29c65738dab9eda8354d9387f1628519' })
  call dein#add('airblade/vim-gitgutter', { 'rev': 'b5f23e986747a6f4b1dc1196d2a5bd3dc7c8c2b6' })
  call dein#add('fatih/vim-go', { 'rev': '08c881dea2eee7ef208a8f27131b6696478bfb99' })
  call dein#add('jeffkreeftmeijer/vim-numbertoggle', { 'rev': 'c4d0aaccce5798fd55649d169de262f3dac06312' })
  call dein#add('sheerun/vim-polyglot', { 'rev': '1422f7a75ce0b382d601238c5979b04473b9021e' })
  call dein#add('yaymukund/vim-rabl', { 'rev': '7e502e0c8ae360b46005ec9e3bebf164eb87bfb0' })
  call dein#add('tpope/vim-rails', { 'rev': 'b5d8d50e1c3d4c99b0d128fa232dde9c43219833' })
  call dein#add('tpope/vim-rake', { 'rev': '82ad45543f0d13dfa7d3f59ca4cd54d0e145417f' })
  call dein#add('vim-ruby/vim-ruby', { 'rev': 'e667558961206e152764625383d661e1e21e8e46' })
  call dein#add('tpope/vim-surround', { 'rev': 'e49d6c2459e0f5569ff2d533b4df995dd7f98313' })
  call dein#add('christoomey/vim-tmux-navigator', { 'rev': '74ee1dbc13bb774f5f63234c086ed2d48fa1fc32' })
  call dein#add('Shougo/vimproc.vim', { 'rev': 'c2f6b82af60a4e7acde0e8dc4e6b6f5dc1cc8e1d' })
  call dein#add('rhysd/vim-crystal')
  call dein#add('posva/vim-vue')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


    let g:smartgf_create_default_mappings = 0
    let g:smartgf_enable_gems_search = 0
    let g:smartgf_auto_refresh_ctags = 0
    let g:smartgf_max_entries_per_page = 9
    let g:smartgf_divider_width = 5
    let g:smartgf_extensions = ['.js', '.coffee', '.json']

    nmap gs <Plug>(smartgf-search)
    vmap gs <Plug>(smartgf-search)
    nmap gS <Plug>(smartgf-search-unfiltered)
    vmap gS <Plug>(smartgf-search-unfiltered)
    map <Leader>gf :SmargfRefreshTags<CR>

"" Include user's extra bundle
if filereadable(expand("~/.vimrc.local.bundles"))
  source ~/.vimrc.local.bundles
endif


" Required:
filetype plugin indent on

"""""""""""""""""""""""""
" Basic features
"""""""""""""""""""""""""
" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace ident
" set backspace=indent,eol,start
set backspace=eol,start,indent

"" allow plugins by file type
filetype on
filetype plugin on

" Indentation and tabbing
set autoindent
set smartindent
set smarttab                    " Make <tab> and <backspace> smarter
set tabstop=1
set shiftwidth=2                " Indents of 2 spaces
set softtabstop=2
set expandtab
set shiftround

"" Map leader to ,
let mapleader=','

""Enable hidden buffers
set hidden

" Search Settings
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Encoding
set bomb
set ttyfast
set binary

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set backspace=indent,eol,start
set showcmd
set shell=/bin/sh


"*********************
"" Visual Settings
"*********************
syntax on
set ruler
set number
set relativenumber

let no_buffers_menu=1
highlight BadWhitespace ctermbg=red guibg=red

set mousemodel=popup
set t_Co=256
set nocursorline
set guioptions=emgrti
set gfn=Monospace\ 8

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=0
  endif
else
  let g:CSApprox_loaded = 1

  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
endif

if &term =~ '256color'
  set t_ut=
endif

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\ %{fugitive#statusline()}

let g:airline_theme = 'solarized'
let g:airline_enable_branch = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
" let g:NERDTreeWinSize = 20
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <C-g> :NERDTreeToggle<cr>
let NERDTreeHighlightCursorline=1
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1

" vimshell
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '
nnoremap <silent> <leader>sh :VimShellCreate<CR>

"*****************************************************************************
"" Functions
"*****************************************************************************
function! s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=79
endfunction

function! TrimWhiteSpace()
  let @*=line(".")
  %s/\s*$//e
  ''
endfunction

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start
autocmd BufEnter * :syntax sync fromstart

"" Remember cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"" txt
au BufRead,BufNewFile *.txt call s:setupWrapping()

"" make/cmake
autocmd BufNewFile,BufRead CMakeLists.txt setlocal ft=cmake

if has("gui_running")
  autocmd BufWritePre * :call TrimWhiteSpace()
endif

autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
let g:syntastic_javascript_checkers=['eslint']

set autoread

"*****************************************************************************
"" Mappings
"*****************************************************************************
"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
let g:gitgutter_realtime = 0

" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
" nnoremap <silent> <S-t> :tabnew<CR>

"" ctrlp.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' "Use silver searcher as ctrlp command for faster search
let g:ctrlp_use_caching = 0
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
noremap <C-b> :CtrlPBuffer<CR>
noremap <C-t> :CtrlPTag<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_open_new_file = 'r'


" syntastic
" let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-airline
let g:airline_enable_syntastic = 1

"" Remove trailing whitespace on <leader>S
nnoremap <silent> <leader>S :call TrimWhiteSpace()<cr>:let @/=''<CR>

"" Old Vimrc

set colorcolumn=80            " Line Witdth = 80
set lazyredraw

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1

" Don't add the comment prefix when I hit enter or o/O on a comment line.
set formatoptions-=or
au FileType * setlocal formatoptions-=r formatoptions-=o

filetype plugin on
filetype indent on

set listchars=tab:▸\ ,trail:•,extends:»,precedes:«

set nowrap
set linebreak

" Folds

" Completion
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Theming
set background=light
colorscheme base16-solarized
set laststatus=2
set cursorline
set list!                       " Display unprintable characters
if $TERM =~ '256color'
  set t_Co=256
elseif $TERM =~ '^xterm$'
  set t_Co=256
endif

" Misc
set hidden                         " Don't abandon buffers moved to the background
set complete=.,w,b,u,U,t,i,d       " Do lots of scanning on tab completion
set updatecount=100                " Write swap file to disk every 100 chars
set diffopt=filler,context:1000000 " filler is default and inserts empty lines for sync

" Terminal Paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" to_html settings
let html_number_lines = 1
let html_ignore_folding = 1
let html_use_css = 1
let xml_use_xhtml = 1

" Keybindings to native vim features
let mapleader=","
let localmapleader=","
map <Leader>? :nohlsearch<cr>
vnoremap . :normal .<CR>
vnoremap @ :normal! @
map <Leader>w :bd<CR>

"""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""

" Fuzzy Search
let g:ctrlp_map = '<c-p>'
map <C-t> :CtrlPTag<cr>
map <C-b> :CtrlPBuffer<cr>
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' "Use silver searcher as ctrlp command for faster search

" Tagbar
let g:tagbar_left = 1
map <Leader>t :TagbarToggle<cr>

" When opening a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \     exe "normal g'\"" |
      \ endif |

" Remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

" spellcheck
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal spell textwidth=72
augroup golang
  au BufNewFile,BufRead *.go setlocal noet ts=2 sw=2 sts=2
  au Filetype go setlocal nolist
augroup END

"Disable paste when leaving insert mode
au InsertLeave * set nopaste

" Rails mappings
map <Leader>m :Rmodel<CR>
map <Leader>s :Runittest<CR>
map <Leader>f :Rfixtures<CR>
map <Leader>c :Rcontroller<CR>
map <Leader>v :Rview<CR>
map <Leader>rm :Rake db:migrate<CR>
map <Leader>rr :Rake routes<CR>
map <Leader>rt :Rake db:test:prepare<CR>
map <Leader>rds :Rake db:reset<CR>
map <Leader>rc :Dispatch bundle exec rails c<CR>
map <leader>rs :Dispatch bundle exec rspec

"Git mappings
map <Leader>gs :Gstatus<CR>
map <Leader>gb :Gblame<CR>
map <leader>gd :Gvdiff<CR>
map <Leader>gv :Gitv<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gl :Git pull<CR>
map <Leader>gp :Git push<CR>
map <Leader>ga :Git add -p

"tabularize
nmap <Leader>t= :Tab /=<CR>
vmap <Leader>t= :Tab /=<CR>
nmap <Leader>t: :Tab /:\zs<CR>
vmap <Leader>t: :Tab /:\zs<CR>
nmap <Leader>t, :Tab /,\zs<CR>
vmap <Leader>t, :Tab /,\zs<CR>
vmap <leader>t# :Tab /#

"Edit Files Shortcuts
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>n :tabedit ~/Code/notes.md<cr>
nnoremap <leader>p :PreviewMarkdown<cr>
nnoremap <leader>jo :execute "edit" "~/OneDrive/Journal/" . strftime("%y-%m-%d.md")<cr>

" Surrounding
map <Leader># ysiw#
map <Leader>" ysiw"
map <Leader>' ysiw'
map <Leader>( ysiw(
map <Leader>) ysiw)
map <Leader>] ysiw]
map <Leader>[ ysiw[

" ,/ to toggle comments
map <Leader>/ gcc

" ysiw#   Wrap the token under the cursor in #{}
" v...s#  Wrap the selection in #{}
let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #

" Select text in an ERb file with visual mode and then press s- or s=
" Or yss- to do entire line.
let g:surround_45 = "<% \r %>"    " -
let g:surround_61 = "<%= \r %>"   " =

" ============================
" SplitJoin plugin
" ============================
map ss :SplitjoinSplit<cr>
map sj :SplitjoinJoin<cr>
map <Leader>sb :set scb!<cr>


" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map <Leader>j :CtrlP<CR>
map <Leader>jb :CtrlPBuffer<CR>
map <Leader>jm :CtrlP app/models<CR>
map <Leader>jc :CtrlP app/controllers<CR>
map <Leader>jv :CtrlP app/views<CR>
map <Leader>jh :CtrlP app/helpers<CR>
map <Leader>jl :CtrlP lib<CR>
map <Leader>jL :CtrlP config/locales<CR>
map <Leader>jp :CtrlP public<CR>
map <Leader>js :CtrlP spec<CR>
map <Leader>jf :CtrlP fast_spec<CR>
map <Leader>jd :CtrlP db<CR>
map <Leader>jC :CtrlP config<CR>
map <Leader>jV :CtrlP vendor<CR>
map <Leader>jF :CtrlP factories<CR>
map <Leader>jT :CtrlP test<CR>


cmap w!! w !sudo tee
map <Leader>ff gg=G
map <Leader>d :Dash<Space>

let base16colorspace=256  " Access colors present in 256 colorspace
set noshowmode

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Keep center result at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

set expandtab

" Start terminal command with a single bang
nnoremap ! :!

