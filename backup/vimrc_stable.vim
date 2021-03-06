set foldmethod=marker
set foldlevel=0
set modelines=1
set nocompatible
filetype off

" Map Leader to space
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" if has ('autocmd')
"   autocmd!
" endif
" -----------------------------------------------------------------------------
" Plugins {{{
call plug#begin('~/.vim/plugged')
" Colors and Theme
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'ap/vim-css-color' " Preview colors in source code
Plug 'elzr/vim-json'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons' " Add filetype glyphs (icons)
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits
Plug 'hail2u/vim-css3-syntax' " CSS3 syntax support
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " SCSS syntax highlighting

" Syntax
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'leafgarland/typescript-vim'
Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }
"Typescript Plugins
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Quramy/tsuquyomi', { 'do': 'npm install -g typescript' }
Plug 'mhartington/deoplete-typescript'

""""""""""""""""""
" Lint Git Misc
""""""""""""""""""
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'airblade/vim-gitgutter' " Shows a git diff in the gutter
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim' " Comment stuff out
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
Plug 'troydm/zoomwintab.vim' " Zoom in/out of windows
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Markdown syntax highlighting
Plug 'terryma/vim-multiple-cursors' " Sublime Text style multiple selections
Plug 'jceb/vim-orgmode', { 'for': 'org' } " Vim Orgmode
Plug 'tpope/vim-speeddating', { 'for': 'org' } " Increment dates, times, and more
" Plug 'easymotion/vim-easymotion' " Vim motions on speed

""""""""""""""""""
" Snippets
""""""""""""""""""
Plug 'epilande/vim-es2015-snippets', { 'for': ['javascript', 'javascript.jsx'] } " ES2015 code snippets
Plug 'epilande/vim-react-snippets', { 'for': ['javascript', 'javascript.jsx'] } " React code snippets
Plug 'honza/vim-snippets' " Snippet files for various programming languages
Plug 'SirVer/ultisnips' " Ultimate snippet solution

""""""""""""""""""""""""""""""""""""
if has('nvim')
  Plug 'roxma/python-support.nvim'
  Plug 'mhartington/nvim-typescript'
  " Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
  Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }
  Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }
else
  " Plug 'ternjs/tern_for_vim', {'do': 'npm install', 'for': ['javascript', 'javascript.jsx'] }
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
endif
""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""
" MIGHT DELETE DONT KNOW WHAT THEY DO
""""""""""""""""""""""""""""""""""""
Plug 'jlanzarotta/bufexplorer' " BufExplorer quickly and easily switch between buffer
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' } " Undo history visualizer
Plug 'wellle/targets.vim' " Provides additional text objects
Plug 'suan/vim-instant-markdown', { 'for': 'markdown' } " Instant Markdown previews
Plug 'MarcWeber/vim-addon-mw-utils' " Cache file automatically
" Plug 'Konfekt/FastFold' " Speed up Vim by updating folds only when called-for

call plug#end()
" }}}
" -----------------------------------------------------------------------------
" -----------------------------------------------------------------------------
" Editor Settings{{{
filetype plugin indent on
set showmode
set tabstop=2
set softtabstop=4
set expandtab
set shiftwidth=2
set shiftround
set smarttab
set number
set rnu
set scrolloff=7                 " keep 4 lines off the edges of the screen when scrolling
set showmatch
set mat=2 " How many tenths of a second to blink when matching brackets
set hlsearch
set incsearch
set path+=**
set clipboard^=unnamed
set autoread
set smartcase
set ignorecase
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set mouse=a
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50
set hidden
set history=1000
set wrap
set nobackup
set nowb
set noswapfile
set cursorline
set list
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·
" set list listchars=nbsp:·
" set listchars=tab:▸\ ,trail:·,precedes:←,extends:→ ",eol:¬,
set switchbuf=useopen,usetab,newtab
try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
catch
endtry
set matchpairs+=<:> " can tab around brackets
let g:html_indent_tags = 'li\|p'
set whichwrap+=<,>,h,l
set ffs=unix,dos,mac " Use Unix as the standard file type
set wildmenu
set wildmode=list:longest,full
set iskeyword+=_,$,@,%,#
set t_vb=
set tm=500
set title                       " change the terminal's title
set novisualbell                  " don't beep
set noerrorbells                " don't beep
set nomodeline                  " disable mode lines (security measure)
" set complete=.,b,u,]
set complete-=i
" Auto resize Vim splits to active split
set winwidth=90
set textwidth=80
set colorcolumn=+1
" set termencoding=utf-8
set encoding=utf8 " Set utf8 as standard encoding and en_US as the standard language
set lazyredraw                  " don't update the display while executing macros
set laststatus=2                " tell VIM to always put a status line in, even if there is only one window
set cmdheight=2                 " use a status bar that is 2 rows high
set omnifunc=syntaxcomplete#Complete
" }}}
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Color Schemes{{{
syntax on
set termguicolors
syntax enable
" let base16colorspace=256  " Access colors present in 256 colorspace

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif
set bg=dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
colorscheme base16-chalk
" }}}
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Plugin Settings {{{

" {{{
"
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
if has('nvim')
  let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'jedi')
  " language specific completions on markdown file
  let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'mistune')

  " utils, optional
  let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'psutil')
  let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'setproctitle')
  let g:python_support_python2_venv = 0
  let g:python_support_python3_venv = 0
endif
" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=0
let g:airline_section_c = '%t'
" }}}

""""""""""""""""""""""""""""""
" Ultisnips {{{
" Trigger configuration
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:SuperTabDefaultCompletionType = '<C-n>'
" }}}
""""""""""""""""""""""""""""""
" undotree
""""""""""""""""""""""""""""""
map <leader>u :UndotreeToggle<CR>
let g:undotree_WindowLayout = 3
let g:undotree_SplitWidth = 35
let g:undotree_SetFocusWhenToggle = 1

let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'
map <leader>o :BufExplorer<cr>

" {{{
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}
if executable('javascript-typescript-stdio')
  let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
  " Use LanguageServer for omnifunc completion
  autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
else
  echo "javascript-typescript-stdio not installed!\n"
  :cq
endif
" }}}

set completeopt+=menuone
set completeopt-=preview
" Deoplete New Settings{{{
"
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#ternjs#tern_bin = '~/.vim/plugged/deoplete-ternjs'
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#filter = 0
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#sort = 0
let g:deoplete#sources#ternjs#expand_word_forward = 0
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#in_literal = 0
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]

let g:deoplete#sources = {}
let g:deoplete#sources.javascript = ['buffer', 'tern']
let g:deoplete#auto_complete_start_length = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#ternjs#tern_bin = '~/.vim/plugged/deoplete-ternjs'
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#filter = 0
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#sort = 0
let g:deoplete#sources#ternjs#expand_word_forward = 0
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#in_literal = 0
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]

let g:deoplete#sources = {}
let g:deoplete#sources.javascript = ['buffer', 'tern']
let g:deoplete#auto_complete_start_length = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

call deoplete#custom#source('buffer', 'mark', 'ℬ')
call deoplete#custom#source('tern', 'mark', '')
call deoplete#custom#source('omni', 'mark', '⌾')
call deoplete#custom#source('file', 'mark', '')
call deoplete#custom#source('jedi', 'mark', '')
call deoplete#custom#source('neosnippet', 'mark', '')
call deoplete#custom#source('typescript',  'rank', 630)

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
" }}}

" FZF {{{
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
nnoremap <silent> <leader>l :Lines<CR>
nnoremap <silent> <leader>t :Tags<CR>
nnoremap <silent> <leader>b :BTags<CR>
" }}}

""""""""""""
" indentLine
""""""""""""
let g:indentLine_color_gui = '#65737E'

" NerdTree {{{
let g:NERDTreeWinPos = "left"
let g:NERDTreeShowHidden=1
" let NERDTreeIgnore = ['\.js.map$', '\.DS_Store$']
" let NERDTreeIgnore=['.git$[[dir]]', '.swp']
" let g:NERDTreeWinSize=25
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeChDirMode                   = 2
map <silent> <C-e> :NERDTreeToggle<CR>
" }}}

" Web Dev Icons{{{
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsOS = 'Darwin'
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" }}}

" Javascript Syntax{{{

""""""""""""""""""""""""""""""
" vim-jsdoc
""""""""""""""""""""""""""""""
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1



" Toggle quotes for json file
map <leader>" :call ConcealJsonToggle()<cr>
let g:vim_json_syntax_conceal = 0
let g:toggle_json_conceal=0
let g:javascript_plugin_jsdoc = 1 " Enables syntax highlighting for JSDocs.
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:used_javascript_libs = 'angularjs,react,jquery,underscore,angularuirouter,flux,requirejs,jasmine,chai,d3'
let g:javascript_enable_domhtmlcss = 1 " html tags in js and jsx files?
" }}}

" ALE {{{
let g:ale_sign_error = 'ㄨ' " error sign
let g:ale_sign_warning = '>>' " warning sign
let g:ale_open_list = 0 " this keeps the loclist lint errors from showing up in a vim pane
let g:ale_lint_on_enter = 1 " 0 disables linting on enter
let g:ale_set_signs = 1
let g:ale_lint_on_save = 1 " lint on save instead
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_quickfix = 1
let g:ale_set_highlights = 0
let g:ale_fixers = {'javascript.jsx': ['prettier'], 'typescript': ['prettier'], 'javascript': ['prettier'], 'typescript.tsx': ['prettier']}
let g:ale_fix_on_save = 0
nmap <Leader>pf <Plug>(ale_fix)
let g:ale_javascript_prettier_options = '--single-quote --print-width 80 --trailing-comma all'
" let g:ale_javascript_prettier_options = '--single-quote --no-semi --print-width 80'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint'],
\   'typescript': ['tslint', 'tsserver', 'typecheck'],
\}

augroup FiletypeGroup
    autocmd!
    au BufNewFile, BufRead *.ts set filetype=typescript
    au BufRead,BufNewFile *.ts		setlocal filetype=typescript
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
    au BufNewFile, BufRead *.jsx set filetype=javascript.jsx

augroup END
augroup filetype javascript syntax=javascript

" function to display ALE in airline
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction
set statusline=%{LinterStatus()}

set rtp+=~/.vim/plugged/typescript-tools.vim/
let g:TSS = ['tss','--module','commonjs']
" ALE gutter sign colors
" hi ALEErrorSign ctermfg=203 ctermbg=237 guifg=#ff0000 guibg=#343d46
" hi ALEWarningSign ctermfg=221 ctermbg=237 guifg=#fac863 guibg=#343d46
" }}}

" vim-fugitive {{{
""""""""""""""""""""""""""""""
map <leader>gg :GitGutterToggle<CR>
map <leader>gs :Gstatus<CR>
set diffopt+=vertical
" }}}

" EMMET{{{
""""""""""""""""""""""""""""""
" let g:user_emmet_leader_key='<C-L>'
imap <leader>q <plug>(emmet-expand-abbr)
" imap <C-l> <plug>(emmet-expand-abbr)
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}
" }}}

" NOTES {{{
let g:notes_folder = '~/Notes/'
" Project specific notes
let g:notes = g:notes_folder . 'Projects/' . fnamemodify(getcwd(), ':t') . '.md'
let g:note_size = 15
" Open current project notes
map <silent> <leader>n :execute ':topleft split ' . g:notes<cr>:execute ':resize' . g:note_size<cr>
" Open daily notes
let g:daily_notes = g:notes_folder . 'Daily/daily-notes.org'
map <silent> <leader>nn :execute ':topleft split ' . g:daily_notes<cr>:execute ':resize' . g:note_size<cr>
" }}}

""""""""""""""""""""""""""""""
" EditorConfig
""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" }}}
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Mappings {{{
" esc
inoremap jk <ESC>`^

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap ; :
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" quick save
nmap <leader>w :w!<cr>
" turn off highlight
map <silent> <leader><cr> :noh<cr>
nnoremap / /\v
vnoremap / /\v
" Edit vimrc
map <leader>e :e! ~/.vimrc<cr>
" Indent/Unindent
noremap > >>
noremap < <<
vnoremap > >gv
vnoremap < <gv
" To the leftmost non-blank character of the current line
map H g^
" To the rightmost character of the current line
map L g$
" Quick quit
map <leader>qq :q<cr>
" Quick file reload
map <leader>r :e<cr>
" Switch between the last two files
nnoremap <leader><leader> <C-^>
" Quickly select text you just pasted
nnoremap gV `[v`]
nnoremap <Tab> %
vnoremap <Tab> %

" List contents of most used registers
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

" Quick macro invocation with q register
nnoremap Q @q

" Math macro, do math on current line
nnoremap <leader>= 0v$hyA = <C-r>=<C-r>"<CR><Esc>

" Quickly edit your macros
" Usage <leader>m or "q<leader>m
nnoremap <leader>m  :<c-u><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>

" JSON formatting with jq
nnoremap <silent> <leader>fj :%!jq '.'<CR>
" }}}
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Auto Cmds {{{
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

au FocusGained,BufEnter * :silent! !
" automatically rebalance windows on vim resize
autocmd BufReadPost *
    \ if &filetype != "gitcommit" && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

autocmd BufRead,BufNewFile *.es6 set filetype=javascript
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
" Remember info about open buffers on close
set viminfo^=%

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=tern#Complete
augroup END
" augroup filetype javascript syntax=javascript

augroup FiletypeGroup
    autocmd!
    au BufNewFile, BufRead *.ts set filetype=typescript
    au BufRead,BufNewFile *.ts		setlocal filetype=typescript
    au BufNewFile,BufRead *.tsx set filetype=typescript.tsx
    au BufNewFile, BufRead *.jsx set filetype=javascript.jsx
    au BufNewFile, BufRead *.js set filetype=javascript
augroup END

" Strip trailing spaces on save
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
"
" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile .{babel,eslint,stylelint}rc set filetype=json

autocmd VimResized * :wincmd =

autocmd filetype javascript setlocal expandtab
" autocmd filetype javascript setlocal foldmethod=marker foldmarker={,}
set formatoptions-=o " don't start new lines w/ comment leader on pressing 'o'
au filetype vim set formatoptions-=o " somehow, during vim filetype detection, this gets set
                     " for vim files, so explicitly unset it again
au filetype crontab setlocal backupcopy=yes " editing crontab files needs to happen in-place

" Strip trailing spaces
function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

nnoremap <C-q> :call <SID>QuickfixToggle()<cr>

let g:quickfix_is_open = 0
function! s:QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
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
" <leader>ld to go to definition
autocmd FileType javascript nnoremap <buffer>
  \ <leader>ld :call LanguageClient_textDocument_definition()<cr>
" <leader>lh for type info under cursor
autocmd FileType javascript nnoremap <buffer>
  \ <leader>lh :call LanguageClient_textDocument_hover()<cr>
" <leader>lr to rename variable under cursor
autocmd FileType javascript nnoremap <buffer>
  \ <leader>lr :call LanguageClient_textDocument_rename()<cr>
"}}}
" -----------------------------------------------------------------------------
"
" Make the Line Numbers Dark Grey to make it more readable against dark bg
" highlight LineNr ctermfg=DarkGrey guifg=DarkGrey
" highlight CursorLineNr cterm=bold ctermfg=11 gui=bold guifg=Yellow
" hi CursorLine cterm=none ctermbg=8 ctermfg=none

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
"
" vim:foldmethod=marker:foldlevel=0
