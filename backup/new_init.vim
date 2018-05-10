" " Plugins {{{
" call plug#begin('~/.vim/plugged')
" " Plug 'Shougo/vimproc.vim', { 'do': 'make' } " Interactive command execution
" " Plug 'Shougo/neomru.vim' " Most Recently Used
" " Plug 'metakirby5/codi.vim'
" " Colors and Syntax
" " Plug 'trevordmiller/nova-vim'
" " Plug 'rakr/vim-one'
" Plug 'ap/vim-css-color' " Preview colors in source code
" Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " SCSS syntax highlighting
" Plug 'ryanoasis/vim-devicons' " Add filetype glyphs (icons)
" Plug 'elzr/vim-json'
" Plug 'mhartington/oceanic-next'
" Plug 'altercation/vim-colors-solarized'
" Plug 'hail2u/vim-css3-syntax' " CSS3 syntax support
" Plug 'tomasr/molokai'
" Plug 'bling/vim-bufferline'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" """"""""""""""""""
" "Javascript Syntax
" """"""""""""""""""
" Plug 'sheerun/vim-polyglot'
" " Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
" " Plug 'jelera/vim-javascript-syntax', {'for':['javascript', 'javascript.jsx']}
" " Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
" " Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx'] }
" " Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
" " Plug 'leafgarland/typescript-vim'
" " Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }
" " Plug 'Quramy/tsuquyomi'
" " Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
" " Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
" " Plug 'fleischie/vim-styled-components', { 'for': ['javascript', 'javascript.jsx'] } " Syntax for styled-components
" " Tern Deoplete and YouComple Me
" if has('nvim')
"   Plug 'roxma/nvim-completion-manager'
"   Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
"   Plug 'roxma/python-support.nvim'
"   Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" else
"   " Plug 'ternjs/tern_for_vim', {'do': 'npm install', 'for': ['javascript', 'javascript.jsx'] }
"   Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
" endif
"
" """"""""""""""""""
" " Tmux
" """"""""""""""""""
" " Plug 'edkolev/tmuxline.vim' " Tmux statusline generator with support for airline
" Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits
"
" """"""""""""""""""
" " Snippets
" """"""""""""""""""
" Plug 'epilande/vim-es2015-snippets', { 'for': ['javascript', 'javascript.jsx'] } " ES2015 code snippets
" Plug 'epilande/vim-react-snippets', { 'for': ['javascript', 'javascript.jsx'] } " React code snippets
" Plug 'honza/vim-snippets' " Snippet files for various programming languages
" Plug 'SirVer/ultisnips' " Ultimate snippet solution
"
" Plug 'w0rp/ale'
"
" " MISC
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'tpope/vim-fugitive' " Git wrapper
" Plug 'airblade/vim-gitgutter' " Shows a git diff in the gutter
" " Plug 'Valloric/MatchTagAlways' " XML tag highlight and jump
" " Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
" Plug 'troydm/zoomwintab.vim' " Zoom in/out of windows
" Plug 'ervandew/supertab'
" Plug 'mattn/emmet-vim'
" Plug 'dyng/ctrlsf.vim' " Code search and view tool
" Plug 'jlanzarotta/bufexplorer' " BufExplorer quickly and easily switch between buffer
" Plug 'Yggdroot/indentLine'
" Plug 'tomtom/tcomment_vim' " Comment stuff out
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-surround'
" Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' } " Undo history visualizer
" Plug 'editorconfig/editorconfig-vim'
" " Visually select larger regions of text using the same key combination
" Plug 'terryma/vim-expand-region' " press + to expand and _ to shrink
"
" """"""""""""""""""""""""""""""""""""
" " MIGHT DELETE DONT KNOW WHAT THEY DO
" """"""""""""""""""""""""""""""""""""
" Plug 'MarcWeber/vim-addon-mw-utils' " Cache file automatically
" Plug 'suan/vim-instant-markdown', { 'for': 'markdown' } " Instant Markdown previews
" Plug 'jceb/vim-orgmode', { 'for': 'org' } " Vim Orgmode
" Plug 'tpope/vim-speeddating', { 'for': 'org' } " Increment dates, times, and more
" Plug 'wellle/targets.vim' " Provides additional text objects
" " Plug 'Konfekt/FastFold' " Speed up Vim by updating folds only when called-for
" " Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Markdown syntax highlighting
" " Plug 'terryma/vim-multiple-cursors' " Sublime Text style multiple selections
" " Plug 'easymotion/vim-easymotion' " Vim motions on speed
"
" call plug#end()
" " }}}
"
" " Basic Vim Config {{{
" "color and theme
" set background=dark
" colorscheme molokai
" " Base Configs
" set nocompatible
" filetype off
" filetype plugin indent on
"  set ttyfast
"  set mouse=a
" set laststatus=2
" set encoding=utf-8
" set autoread
" set autoindent
" set backspace=indent,eol,start
" set incsearch
" set hlsearch
"
" " basic vim settings
" set hidden
" set visualbell
" set number
" set nobackup
" set noswapfile
" set noshowmode
" set title
" " global tab width
" set tabstop=2
" set shiftwidth=2
" set softtabstop=2
" set expandtab
" set list listchars=tab:»\ ,trail:·
" " Send all vim registers to the mac clipboard
" set clipboard=unnamed
" " Default to magic mode when using substitution
" cnoremap %s/ %s/\v
" cnoremap \>s/ \>s/\v
" " Terminal mode mappings
" tnoremap <Esc> <C-\><C-n>
"
" " Mappings
" let mapleader = "\<Space>"
" let g:mapleader = "\<Space>"
" inoremap jk <ESC>`^
" nnoremap ; :
" nmap <silent>  <leader>p : set spell!<CR>
" nnoremap <silent> <leader>q :cclose<CR>
"
" set spelllang=en_us
" " }}}
"
" " Mappings and Functions {{{
" " Capture current file path into clipboard
" function! CaptureFile()
"   let @+ = expand('%')
" endfunction
" map <leader>f :call CaptureFile()<cr>
"
" " Rename current file
" function! RenameFile()
"   let old_name = expand('%')
"   let new_name = input('New file name: ', expand('%'))
"   if new_name != '' && new_name != old_name
"     exec ':saveas ' . new_name
"     exec ':silent !rm ' . old_name
"     redraw!
"   endif
" endfunction
" map <leader>rn :call RenameFile()<cr>
"
" " Strip whitespace on save
" fun! <SID>StripTrailingWhitespaces()
"   " Preparation: save last search, and cursor position.
"   let _s=@/
"   let l = line(".")
"   let c = col(".")
"   " Do the business:
"   %s/\s\+$//e
"   " Clean up: restore previous search history, and cursor position
"   let @/=_s
"   call cursor(l, c)
" endfun
"
" command -nargs=0 Stripwhitespace :call <SID>StripTrailingWhitespaces()
"
" " Fix indentation in file
" map <leader>fi mmgg=G`m<CR>
"
" " Toggle highlighting of search results
" nnoremap <leader><cr> :nohlsearch<cr>
" " }}}
"
" " language-server {{{
" " Required for operations modifying multiple buffers like rename.
" set hidden
"
" let g:LanguageClient_serverCommands = {
"     \ 'javascript': ['/usr/local/lib/node_modules/javascript-typescript-langserver/lib/language-server.stdio.js'],
"     \ }
"
" " Automatically start language servers.
" let g:LanguageClient_autoStart = 1
"
" nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
" " }}}
"
" " python-support {{{
" " for python completions
" let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'jedi')
" " language specific completions on markdown file
" let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'mistune')
"
" " utils, optional
" let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'psutil')
" let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'setproctitle')
" " }}}
"
" " emmet-vim {{{
" let g:user_emmet_settings = {
" \  'javascript' : {
" \      'extends' : 'jsx',
" \  },
" \}
" " }}}
"
" " vim-markdown {{{
" let g:vim_markdown_toml_frontmatter = 1
" let g:vim_markdown_folding_disabled = 1
" " }}}
"
" " vim-go {{{
" let g:go_metalinter_autosave = 1
" let g:go_metalinter_autosave_enabled = ['vet', 'golint']
" let g:go_list_type = "quickfix"
" let g:go_fmt_command = "goimports"
" let g:go_snippet_engine = "neosnippet"
" let g:go_highlight_types = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_extra_types = 1
" let g:go_auto_type_info = 1
" let g:go_auto_sameids = 1
" " }}}
"
" " vim-json {{{
" let g:vim_json_syntax_conceal = 0
" " }}}
"
" " vim-polyglot {{{
" let g:jsx_ext_required = 0
" " }}}
"
" " vim-test {{{
" let test#strategy = "neovim"
"
" " Add hotkeys for vim-test
" nmap <silent> <leader>t :TestFile<CR>
" nmap <silent> <leader>T :TestNearest<CR>
" nmap <silent> <leader>a :TestSuite<CR>
" nmap <silent> <leader>l :TestLast<CR>
" nmap <silent> <leader>g :TestVisit<CR>
" " }}}
"
" " Auto-commands {{{
" if has("autocmd")
"   " always start terminal in insert mode
"   autocmd BufWinEnter,WinEnter term://* startinsert
"
"   " Execute NeoMake makers
"   " autocmd BufWritePost * Neomake
"   " autocmd BufReadPost * Neomake
"
"   " StripTrailingWhitespaces
"   autocmd BufWritePre * Stripwhitespace
"
"   " To spell check all git commit messages
"   au BufNewFile,BufRead COMMIT_EDITMSG set spell nonumber nolist wrap linebreak
"
"   " Set filetype tab settings
"   autocmd FileType ruby,json,haml,eruby,yaml,html,javascript,coffee,sass,cucumber,stylus,css,xml,htmldjango set ai ts=2 sw=2 sts=2 et
"   autocmd FileType python,doctest set ai ts=4 sw=4 sts=4 et
"
"   " Enable auto-completion
"   autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"   autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
"   autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"
"   " Set Syntax Highlighting for odd file types
"   augroup filetypedetect
"     au BufNewFile,BufRead .gitconfig,.git/* set noet
"     au BufNewFile,BufRead Dockerfile* setf dockerfile
"     au BufNewFile,BufRead *.fizz setf fizz
"     au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
"     au BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
"   augroup END
"
"   " Set Ruby specific settings
"   au FileType ruby nmap <leader>bp orequire "pry"; binding.pry<esc>^
"
"   " Set Elixir specific settings
"   " au FileType elixir nmap <leader>bp orequire IEx; IEx.pry<esc>^
"
"   " Set Go specific mappings
"   au FileType go set ai ts=2 sw=2 sts=2 noet nolist autowrite
"   au FileType fizz set ai ts=2 sw=2 sts=2 noet nolist autowrite
"
"   " Set ERB specific settings
"   au FileType eruby nmap <leader>bp o<% require "pry"; binding.pry %><esc>^
"
"   " Restore cursor position
"   autocmd BufReadPost *
"     \ if line("'\"") > 1 && line("'\"") <= line("$") |
"     \   exe "normal! g`\"" |
"     \ endif
" endif
" " }}}


" Settings
set nocompatible
filetype plugin indent on
if has ('autocmd')
  autocmd!
endif
" syntax on
" syntax enable
if !exists("g:syntax_on")
    syntax enable
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set t_Co=256
" Sets how many lines of history VIM har to remember
set path+=**
set modeline
" Enable filetype plugin

set completeopt=menuone,longest,preview " Options for insert mode completion
set completeopt-=preview                " tern_for_vim - turn off the preview window

" INDENT SETTINGS
set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2
set smartindent
set so=7 " Set 7 lines to the cursor - when moving vertically using j/k

" pane split to right and under
set splitbelow
set splitright

" Set Search Options
set hlsearch " enable search highlighting
set ignorecase " ignore case when searching
set incsearch " incremental search that shows partial matches
set smartcase " automatically switch search to case-sensitive when query contains uppercase

" Performance Options
set complete-=i
set lazyredraw " dont update screen during macros and script execution
set clipboard=unnamedplus,unnamed

" Text Rendering Options
set display+=lastline
set encoding=utf8
set linebreak " avoid wrapping line in the middle of a word
set scrolloff=1 " the # of screen lines to keep above and below the cursor
set sidescrolloff=5 " the # of screen columns to keep to the left and right of cursor
set wrap
set whichwrap+=<,>,h,l
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces visually
set iskeyword+=_,$,@,%,#

" User Interface Options
set laststatus=2 " always display the status bar
set ruler " always show cursor position
set wildmenu
" set tabpagemax=50 " max number of tab pages that can be opened from command line
set cursorline
set number " show line numbers on the side bar
set relativenumber
set noerrorbells " disable beep on erros
set novisualbell
set mouse=a " enable mouse for scrolling and shit
set ttyfast
set title " set the windows title reflecting the file being edited
set background=dark " use colors that suit a dark background
" set nostartofline " stop moving the cursor to the front of the line all the time
" set notimeout ttimeout ttimeoutlen=200 " Quickly time out on keycodes, but never time out on mappings

" Code Folding Options
set foldmethod=indent " fold based on the indentation
set foldnestmax=3 " only fold up to 3 nested levels
set nofoldenable " disable folding by default

" MISC OPTIONS
set autoread " auto re read file if unmodified inside vim
set backspace=indent,eol,start " allow backspacing over indent lin
set hidden " hide files in the background instead of closing them
set history=3000 " increase the undo limit
" set nomodeline " Ignore file’s mode lines; use vimrc configurations instead.
set noswapfile " disable swap files
" set nrformats-=octal " interpret octal as decimal when incrementing
" set shell zsh " the shell used to execute commands
set spell " enable spell checking

" Marker For Where 80 Characters Are
set textwidth=80
set colorcolumn=+1
set lbr " linebreak
set tw=500 " text-width
autocmd BufRead,BufNewFile * setlocal textwidth=80

set modifiable

" guioptions {{{
if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
endif
" }}}

set ffs=unix,dos,mac " Favorite filetypes
set showcmd
set cmdheight=2
set magic " Set magic on
set vb t_vb= " No sound on errors.
set showmatch " show matching bracets
set showfulltag
set mat=2 " match

" Display incomplete commands
" Shortens messages to avoid 'press a key' prompt
set shortmess=aoOtTI

" FILES, BACKUPS, AND UNDO {{{
""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup " 
set nowb " set no write backup
" Turn on presistent undo
" means that you can undo even when you close a buffer/Vim
try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
catch
endtry
"}}}

" Turn on wild menu, try typing :h and press <Tab>
set wildmode=list:longest,full
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




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
set statusline=
set statusline+=%(%{&buflisted?bufnr('%'):''}\ \ %)
set statusline+=%< " Truncate line here
set statusline+=%f\  " File path, as typed or relative to current directory
set statusline+=%{&modified?'+\ ':''}
set statusline+=%{&readonly?'\ ':''}
set statusline+=%= " Separation point between left and right aligned items
set statusline+=\ %{&filetype!=#''?&filetype:'none'}
set statusline+=%(\ %{(&bomb\|\|&fileencoding!~#'^$\\\|utf-8'?'\ '.&fileencoding.(&bomb?'-bom':''):'')
  \.(&fileformat!=#(has('win32')?'dos':'unix')?'\ '.&fileformat:'')}%)
set statusline+=%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)
set statusline+=\ 
set statusline+=\ %{&number?'':printf('%2d,',line('.'))} " Line number
set statusline+=%-2v " Virtual column number
set statusline+=\ %2p%% " Percentage through file in lines as in |CTRL-G|
"
" " ------------------------ 8< ------------------------
"
" " Statusline with highlight groups (requires Powerline font, using Solarized theme)
" set statusline=
" set statusline+=%(%{&buflisted?bufnr('%'):''}\ \ %)
" set statusline+=%< " Truncate line here
" set statusline+=%f\  " File path, as typed or relative to current directory
" set statusline+=%{&modified?'+\ ':''}
" set statusline+=%{&readonly?'\ ':''}
" set statusline+=%1*\  " Set highlight group to User1
" set statusline+=%= " Separation point between left and right aligned items
" set statusline+=\ %{&filetype!=#''?&filetype:'none'}
" set statusline+=%(\ %{(&bomb\|\|&fileencoding!~#'^$\\\|utf-8'?'\ '.&fileencoding.(&bomb?'-bom':''):'')
"   \.(&fileformat!=#(has('win32')?'dos':'unix')?'\ '.&fileformat:'')}%)
" set statusline+=%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)
" set statusline+=\ %* " Restore normal highlight
" set statusline+=\ %{&number?'':printf('%2d,',line('.'))} " Line number
" set statusline+=%-2v " Virtual column number
" set statusline+=\ %2p%% " Percentage through file in lines as in |CTRL-G|
" "
" " " Logic for customizing the User1 highlight group is the following
" " " - if StatusLine colors are reverse, then User1 is not reverse and User1 fg = StatusLine fg
" hi StatusLine cterm=reverse gui=reverse ctermfg=14 ctermbg=8 guifg=#93a1a1 guibg=#002732
" hi StatusLineNC cterm=reverse gui=reverse ctermfg=11 ctermbg=0 guifg=#657b83 guibg=#073642
" hi User1 ctermfg=14 ctermbg=0 guifg=#93a1a1 guibg=#073642
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





" => CMDS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify the behavior when switching between buffers
try
  " set switchbuf=useopen,usetab,newtab
  set switchbuf=useopen,usetab,vsplit
  set stal=1 " showtabline
catch
endtry

" ----------------------------------------------------------------------------
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
" Remember info about open buffers on close
set viminfo^=%
" Switch to the directory of the open buffer
noremap <leader>cd :cd %:p:h<cr>



" ============================================================================
" Mappings {{{

let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
inoremap jk <ESC>`^
nnoremap ; :

nmap <leader>w :w!<cr>
" Quick quit
map <leader>qq :q<cr>

" Saner behavior of n and N
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

" Search current word without moving cursor
nnoremap <silent> K :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" Math macro, do math on current line
nnoremap <leader>= 0v$hyA = <C-r>=<C-r>"<CR><Esc>
" List contents of most used registers
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

" Paste in visual mode without updating default register
vnoremap p "_c<Esc>p

" Quick macro invocation with q register
nnoremap Q @q

" Use tab to jump between blocks, because it's easier
nnoremap <tab> %
vnoremap <tab> %

" Treat long lines as break lines (useful when moving around in them).
" Store relative line number jumps in the jumplist.
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>


" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

if has('nvim')
  " Hack to get <C-h> working in neovim
  nnoremap <BS> <C-W>h
  " Exit terminal input mode
  " tnoremap <Esc> <C-\><C-n>
  " Easy navigation from terminal
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
endif


" ============================================================================
" Enter for new Line {{{
nnoremap <CR> o<Esc>
"Below is to fix issues with the ABOVE mappings in quickfix window
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>
"}}}
" ============================================================================

" Map Alt-[h,j,k,l] for resizing a window split
nnoremap <silent> <left> :vertical resize -1<CR>
nnoremap <silent> <down> :resize -1<CR>
nnoremap <silent> <up> :resize +1<CR>
nnoremap <silent> <right> :vertical resize +1<CR>

" Close the current buffer
map <leader>bd :Bclose<cr>

" Switch between the last two files
nnoremap <leader><leader> <C-^>

" Quickly select text you just pasted
nnoremap gV `[v`]


if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

map <leader>e :e! ~/.vimrc<cr>

" Copy/Paste to clipboard
vmap <leader>y "+y
vmap <leader>d "+d
map <leader>p "+p
map <leader>P "+P

" Indent/Unindent
noremap > >>
noremap < <<
vnoremap > >gv
vnoremap < <gv

" To the leftmost non-blank character of the current line
map H g^
" To the rightmost character of the current line
map L g$

" Quick file reload
map <leader>r :e<cr>
" nnoremap - :<C-u>execute '-'.v:count1.'copy.'<CR>
" nnoremap + :<C-u>execute '+'.v:count1.'copy.'<CR>

"}}}
" ============================================================================


" ============================================================================
" Source Our Plugins
source ~/.vim/plugins.vim

if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif
" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile .{babel,eslint,stylelint}rc set filetype=json
" ============================================================================

" ============================================================================
" Plugin Settings {{{

" ============================================================================
" Deoplete settings {{{
" let g:deoplete#enable_at_startup=1
" Insert <TAB> or select next match
" inoremap <silent> <expr> <Tab> utils#tabComplete()
" inoremap <silent> <expr> <C-]> utils#manualTagComplete()
"}}}
" ============================================================================

" ============================================================================
" Nerd Tree {{{
map <silent> <C-e> :NERDTreeToggle<CR>
augroup nerd_loader
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END
"}}}
" ============================================================================

" ============================================================================
" Color And Theme {{{
" set background=dark
colorscheme molokai
let g:rehash256 = 1
" HIGHLIGHTS
highlight Comment cterm=italic
"}}}
" ============================================================================

" ============================================================================
" FZF {{{
"""""""""""""""""""""""""""""""
let g:fzf_layout = { 'down': '40%' }
" Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Search project files, respecting git ignore
nnoremap <silent> <C-f> :FZF<CR>
" Search all files, e.g. node_modules/
nnoremap <silent> <leader>af :call fzf#vim#files('',
      \ {'source': 'ag --hidden --ignore .git -f -g "" -u', 'down': '40%'})<CR>
" Search MRU buffers
nnoremap <silent> <leader>f :Buffers<CR>
nnoremap <silent> <leader>` :Marks<CR>
" [Tags] Command to generate tags file
" let g:fzf_tags_command = 'ctags -R --exclude=.git --exclude=node_modules --exclude=test'
nnoremap <silent> <leader>t :Tags<CR>
nnoremap <silent> <leader>b :BTags<CR>
"}}}
" ============================================================================


" ============================================================================
" undo {{{
map <leader>u :UndotreeToggle<CR>
let g:undotree_WindowLayout = 4
let g:undotree_SplitWidth = 35
let g:undotree_SetFocusWhenToggle = 1
"}}}
" ============================================================================

""""""""""""""""""""""""""""""
" vim-jsdoc
""""""""""""""""""""""""""""""
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1

" ============================================================================
" Javascript Syntax {{{
let g:javascript_plugin_jsdoc = 1 " Enables syntax highlighting for JSDocs.
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:used_javascript_libs = 'angularjs,react,jquery,underscore,angularuirouter,flux,requirejs,jasmine,chai,d3'
let g:javascript_enable_domhtmlcss = 1 " html tags in js and jsx files?
"}}}
" ============================================================================

" ============================================================================
" ALE Linter {{{
let g:ale_sign_error = 'ㄨ' " error sign
let g:ale_sign_warning = '>>' " warning sign
let g:ale_open_list = 0 " this keeps the loclist lint errors from showing up in a vim pane
let g:ale_lint_on_enter = 1 " 0 disables linting on enter
let g:ale_set_signs = 1
let g:ale_lint_on_save = 1 " lint on save instead
let g:ale_lint_on_text_changed = 'always'
let g:ale_set_quickfix = 1
let g:ale_set_highlights = 0
" prettier setup
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers = {'javascript.jsx': ['prettier'], 'typescript': ['prettier'], 'javascript': ['prettier'], 'typescript.tsx': ['prettier']}
let g:ale_fix_on_save = 0
" nmap <Leader>py <Plug>(Prettier)

nmap <Leader>pf <Plug>(ale_fix)
let g:ale_javascript_prettier_options = '--single-quote --print-width 80 --trailing-comma all'
let g:ale_javascript_prettier_options = '--single-quote --no-semi --print-width 80'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint'],
\   'typescript': ['tslint', 'tsserver', 'typecheck'],
\}
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

augroup FiletypeGroup
    autocmd!
    au BufNewFile, BufRead *.ts set filetype=typescript
    au BufRead,BufNewFile *.ts setlocal filetype=typescript
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
    au BufNewFile, BufRead *.jsx set filetype=javascript.jsx
augroup END

"function to display ALE in airline
" function! LinterStatus() abort
"     let l:counts = ale#statusline#Count(bufnr(''))
"
"     let l:all_errors = l:counts.error + l:counts.style_error
"     let l:all_non_errors = l:counts.total - l:all_errors
"
"     return l:counts.total == 0 ? 'OK' : printf(
"     \   '%dW %dE',
"     \   all_non_errors,
"     \   all_errors
"     \)
" endfunction

" set statusline=%{LinterStatus()}
set rtp+=~/.vim/plugged/typescript-tools.vim/
let g:TSS = ['tss','--module','commonjs']
" ALE gutter sign colors
hi ALEErrorSign ctermfg=203 ctermbg=237 guifg=#ff0000 guibg=#343d46
hi ALEWarningSign ctermfg=221 ctermbg=237 guifg=#fac863 guibg=#343d46
" }}}
" ============================================================================

" ============================================================================
" EditorConfig {{{
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
"}}}
" ============================================================================

" ============================================================================
" ZoomWin {{{
nnoremap <silent> <leader>z :ZoomWinTabToggle<cr>
"}}}
" ============================================================================

" ============================================================================
" CtrlSF Seach Project for word {{{
nmap <leader>i <Plug>CtrlSFPrompt
vmap <leader>i <Plug>CtrlSFVwordPath
" Toggle CtrlSF result display
map <leader>ii :CtrlSFToggle<CR>
let g:ctrlsf_indent = 2
"}}}
" ============================================================================

" ============================================================================
" Vim Fugitive {{{
map <leader>gg :GitGutterToggle<CR>
map <leader>gs :Gstatus<CR>
set diffopt+=vertical
"}}}
" ============================================================================

" ============================================================================
" Bufexplorer Plugin {{{
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'
map <leader>o :BufExplorer<cr>
"}}}
" ============================================================================

" Trim WhiteSpace
nnoremap <Leader>tws :%s/\s\+$//e<CR>
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" " Set Syntax
map <leader>sy :set syntax=
" Toggle quotes for json file
map <leader>" :call ConcealJsonToggle()<cr>
let g:toggle_json_conceal=0

" Trigger configuration
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" ============================================================================
" Tab completion  {{{
 " will insert tab at beginning of line,
 " will use completion if not at beginning
" function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
" endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>
"}}}
" ============================================================================

" ============================================================================
" AUTOCMD {{{

" OmniFuncs {{{
" Folds
augroup fdm
  autocmd!
  autocmd FileType lua,go,c,cpp setlocal foldmethod=syntax
  autocmd FileType python       setlocal foldmethod=indent
  autocmd FileType vim          setlocal foldmethod=marker
augroup END

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=tern#Complete
  " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
augroup END
"}}}

" }}}
" ============================================================================



function! VisualSelection(direction, extra_filter) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  elseif a:direction == 'f'
    execute "normal /" . l:pattern . "^M"
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if bufnr("%") == l:currentBufNum
    new
  endif

  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction


" Toggle quotes for json file
function! ConcealJsonToggle()
  if g:toggle_json_conceal
    set conceallevel=2
    let g:toggle_json_conceal=0
  else
    set conceallevel=0
    let g:toggle_json_conceal=1
  endif
endfunction


" Strip trailing spaces
function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun


" Tab completion
 " will insert tab at beginning of line,
 " will use completion if not at beginning
 function! InsertTabWrapper()
     let col = col('.') - 1
     if !col || getline('.')[col - 1] !~ '\k'
         return "\<tab>"
     else
         return "\<c-p>"
     endif
 endfunction
"
" Strip trailing spaces on save
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"}}}
" ============================================================================
