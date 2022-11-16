"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

  " Add or remove your plugins here:
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  let g:deoplete#enable_at_startup = 1

  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'

  " You can specify revision/branch/tag.
  Plug 'Shougo/vimshell'
  Plug 'jgdavey/tslime.vim'
  " Plug 'wakatime/vim-wakatime'
  Plug 'vim-scripts/CSApprox'
  " Plug 'smeggingsmegger/ag.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'chriskempson/base16-vim'
  Plug 'janko/vim-test'
  Plug 'kien/ctrlp.vim'
  Plug 'gregsexton/gitv'
  Plug 'scrooloose/nerdtree'
  Plug 'stefandtw/quickfix-reflector.vim'
  " Plug 'gorkunov/smartgf.vim'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'scrooloose/syntastic'
  Plug 'godlygeek/tabular'
  Plug 'majutsushi/tagbar'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-dispatch'
  Plug 'Lokaltog/vim-easymotion'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Shougo/vimproc.vim'
  Plug 'dense-analysis/ale'

  "Language plugins
  " Ruby
  Plug 'yaymukund/vim-rabl'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rake'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-endwise'
  Plug 'killphi/vim-ruby-refactoring'

  " Everything else
  Plug 'Shutnik/jshint2.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'vim-scripts/HTML-AutoCloseTag'
  Plug 'fatih/vim-go'
  " Plug 'hail2u/vim-css3-syntax'
  Plug 'gorodinskiy/vim-coloresque'
  " Plug 'elixir-lang/vim-elixir'
  " Plug 'rhysd/vim-crystal'
  " Plug 'posva/vim-vue'
  " Plug 'elmcast/elm-vim'
  " Plug 'sheerun/apiblueprint.vim'
  " Plug 'plasticboy/vim-markdown'
  " Plug 'elzr/vim-json'
  " Plug 'https://github.com/tbastos/vim-lua'

  let g:vim_markdown_json_frontmatter = 1
  let g:vim_json_syntax_conceal = 0

  " Required:
call plug#end()

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let test#strategy = "tslime"

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.

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
set clipboard+=unnamed

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

let g:airline_theme = 'onedark'
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

" autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
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
let g:ctrlp_use_caching = 0
set grepprg=rg\ --color=never
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'

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
" nnoremap <silent> <leader>S :call TrimWhiteSpace()<cr>:let @/=''<CR>

"" Old Vimrc

set colorcolumn=80            " Line Witdth = 80
set lazyredraw

" (Hopefully) removes the delay when hitting esc in insert mode
" set noesckeys
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
if exists('$BASE16_THEME')
      \ && (!exists('g:colors_name') || g:colors_name != 'base16-$BASE16_THEME')
  let base16colorspace=256
  colorscheme base16-$BASE16_THEME
else
  colorscheme base16-default-dark
endif
set background=dark
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
set grepprg=rg\ --color=never
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
let g:ctrlp_use_caching = 0

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
autocmd Filetype gitcommit setlocal spell textwidth=72 spelllang=pt_br
autocmd Filetype markdown setlocal spell textwidth=72 spelllang=pt_br
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
map <Leader>rds :Rake db:reset<CR>
map <Leader>rc :Dispatch bundle exec rails c<CR>

" let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'
let g:rubocop_command = 'call Send_to_Tmux("bundle exec rubocop {file}\n")'

function! RubocopCurrentFilePath()
  return @%
endfunction

function! RunRubocop()
  let rspec_command = substitute(g:rubocop_command, "{file}", RubocopCurrentFilePath(), "g")

  execute rspec_command
endfunction

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
nmap <Leader>tv <Plug>SetTmuxVars
nmap <Leader>rr :call RunRubocop()<CR>

nmap <silent> <Leader>rs :TestNearest<CR>
nmap <silent> <Leader>rt :TestFile<CR>
nmap <silent> <Leader>ra :TestSuite<CR>
nmap <silent> <Leader>rl :TestLast<CR>
nmap <silent> <Leader>rv :TestVisit<CR>

nnoremap <leader>rel  :RExtractLet<cr>

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
nnoremap <leader>n :tabedit ~/OneDrive/notes.md<cr>
nnoremap <leader>p :PreviewMarkdown<cr>
nnoremap <leader>jo :execute "edit" "~/OneDrive/Journal/" . strftime("%y-%m-%d.md")<cr>
nnoremap <leader>sp :tabedit ~/OndDrive/wet-stone.md<cr>

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
function! ScrollBind(...)
  " Description: Toggle scrollbind amongst window splits
  " Arguments: 'mode' ( optional ) If not given, toggle scrollbind
  "               = 0 - Disable scrollbind
  "                 1 - Enable  scrollbind
  let l:curr_bufnr = bufnr('%')
  let g:scb_status = ( a:0 > 0 ? a:1 : !exists('g:scb_status') || !g:scb_status )
  if !exists('g:scb_pos') | let g:scb_pos = {} | endif

  let l:loop_cont = 1
  while l:loop_cont
    setl noscb
    if !g:scb_status && has_key( g:scb_pos, bufnr('%') )
      call setpos( '.', g:scb_pos[ bufnr('%') ] )
    endif
    execute "wincmd w"
    let l:loop_cont = !( l:curr_bufnr == bufnr('%') )
  endwhile

  if g:scb_status
    let l:loop_cont = 1
    while l:loop_cont
      let g:scb_pos[ bufnr('%') ] = getpos( '.' )
      normal! gg
      setl scb
      execute "wincmd w"
      let l:loop_cont = !( l:curr_bufnr == bufnr('%') )
    endwhile
  else
    let g:scb_pos = {}
  endif

  if g:scb_status
    echom "Enabling scrollbind"
  else
    echom "Disabling scrollbind"
  endif
endfunction
nmap <silent> <Leader>sb :call ScrollBind()<CR>


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
nmap =j :%!python -m json.tool<CR>
map <Leader>d :Dash<Space>

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


