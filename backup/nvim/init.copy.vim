set foldmethod=marker
set foldlevel=0
set modelines=1
" Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible


if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
syntax on

" Change shell
" set shell=bash                  " Vim expects a POSIX-compliant shell, which Fish (my default shell) is not


" Map Leader to space
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" Editing behaviour {{{
set showmode                    " always show what mode we're currently editing in
set wrap                        " don't wrap lines
set tabstop=2                   " a tab is four spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set scrolloff=7                 " keep 4 lines off the edges of the screen when scrolling
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set matchpairs+=<:> " can tab around brackets
set ruler
" set path=$PWD/**
set path+=**
set whichwrap+=<,>,h,l
set listchars=tab:▸\ ,trail:·,eol:¬,extends:#,nbsp:·
set nolist                      " don't show invisible characters by default, but it is enabled for some file types (see later)
set pastetoggle=<F2>            " when in insert mode, press <F2> to go to paste mode, where you can paste mass data that won't be autoindented
set mouse=a                     " enable using the mouse if terminal emulator supports it (xterm does)
set fileformats="unix,dos,mac"
set formatoptions+=1            " When wrapping paragraphs, don't end lines with 1-letter words (looks stupid)
set nrformats=                  " make <C-a> and <C-x> play well with zero-padded numbers (i.e. don't consider them octal or hex)
set shortmess+=I                " hide the launch screen
set clipboard=unnamed           " normal OS clipboard interaction
set autoread                    " automatically reload files changed outside of Vim

" Make the keyboard faaaaaaast
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50

" Toggle show/hide invisible chars
nnoremap <leader>I :set list!<cr>

" Toggle line numbers
nnoremap <leader>N :setlocal number!<cr>

" Thanks to Steve Losh for this liberating tip
" See http://stevelosh.com/blog/2010/09/coming-home-to-vim
nnoremap / /\v
vnoremap / /\v

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" Switch from block-cursor to vertical-line-cursor when going into/out of
" insert mode
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
" }}}

" Folding rules {{{
set foldenable                  " enable folding
set foldcolumn=0                " add a fold column
set foldmethod=marker           " detect triple-{ style fold markers
set foldlevelstart=99           " start out with everything unfolded
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
                                " which commands trigger auto-unfold
" function! MyFoldText()
"     let line = getline(v:foldstart)
"
"     let nucolwidth = &fdc + &number * &numberwidth
"     let windowwidth = winwidth(0) - nucolwidth - 3
"     let foldedlinecount = v:foldend - v:foldstart
"
"     " expand tabs into spaces
"     let onetab = strpart('          ', 0, &tabstop)
"     let line = substitute(line, '\t', onetab, 'g')
"
"     let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
"     let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
"     return line . ' …' . repeat(" ",fillcharcount) . foldedlinecount . ' '
" endfunction
" set foldtext=MyFoldText()
"
" " Mappings to easily toggle fold levels
" nnoremap z0 :set foldlevel=0<cr>
" nnoremap z1 :set foldlevel=1<cr>
" nnoremap z2 :set foldlevel=2<cr>
" nnoremap z3 :set foldlevel=3<cr>
" nnoremap z4 :set foldlevel=4<cr>
" nnoremap z5 :set foldlevel=5<cr>
" }}}

" Editor layout {{{
set termencoding=utf-8
set encoding=utf-8
set lazyredraw                  " don't update the display while executing macros
set laststatus=2                " tell VIM to always put a status line in, even if there is only one window
set cmdheight=2                 " use a status bar that is 2 rows high
" }}}

" Vim behaviour {{{
set hidden                      " hide buffers instead of closing them

set history=1000                " remember more commands and search history
" set undolevels=1000             " use many muchos levels of undo

set nobackup                    " do not keep backup files, it's 70's style cluttering
set nowb
set noswapfile                  " do not write annoying intermediate swap files,
                                "    who did ever restore from swap files anyway?
                                "
set switchbuf=useopen,usetab,newtab
try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
catch
endtry

set completeopt-=preview
set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:longest,full

set iskeyword+=_,$,@,%,#
" set wildmode=list:full          " show a list when pressing tab and complete
"                                 "    first full match
set wildignore=*.o,*~,*.pyc
" set wildignore=*.swp,*.bak,*.pyc,*.class
" set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif
if has("win16") || has("win32")
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif

set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep
set showcmd                     " show (partial) command in the last line of the screen
                                "    this also shows visual selection info
set nomodeline                  " disable mode lines (security measure)
set rnu
"set ttyfast                     " always use a fast terminal
set cursorline                " don't highlight the current line (useful for quick orientation, but also slow to redraw)

" }}}

" Toggle the quickfix window {{{
" From Steve Losh, http://learnvimscriptthehardway.stevelosh.com/chapters/38.html
nnoremap <C-q> :call <SID>QuickfixToggle()<cr>

let g:quickfix_is_open = 0
au FocusGained,BufEnter * :silent! !
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
" }}}

" Toggle the foldcolumn {{{
nnoremap <leader>ff :call FoldColumnToggle()<cr>

let g:last_fold_column_width = 4  " Pick a sane default for the foldcolumn

function! FoldColumnToggle()
    if &foldcolumn
        let g:last_fold_column_width = &foldcolumn
        setlocal foldcolumn=0
    else
        let &l:foldcolumn = g:last_fold_column_width
    endif
endfunction
" }}}

" Highlighting {{{

" if (has("termguicolors"))
"    set termguicolors
" endif

if &t_Co > 2 || has("gui_running")
   syntax on                    " switch syntax highlighting on, when the terminal has colors
endif



" }}}

" Shortcut Mappings {{{
" Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk
nnoremap ; :
" Fast saving
nmap <leader>w :w!<cr>
map <silent> <leader><cr> :noh<cr>

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


" Quick quit
map <leader>qq :q<cr>

" Quick file reload
map <leader>r :e<cr>

" Switch between the last two files
nnoremap <leader><leader> <C-^>

" Quickly select text you just pasted
nnoremap gV `[v`]

" Edit the vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Quickly get out of insert mode without your fingers having to leave the
" home row (either use 'jj' or 'jk')
" inoremap jk <Esc>
inoremap jk <ESC>`^

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null
" Jump to matching pairs easily, with Tab
nnoremap <Tab> %
vnoremap <Tab> %
" Folding
nnoremap <Space> za
vnoremap <Space> za
" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" Use The Silver Searcher over grep, iff possible
if executable('ag')
   " Use ag over grep
   set grepprg=ag\ --nogroup\ --nocolor
endif

" grep/Ack/Ag for the word under cursor
" vnoremap <leader>a y:grep! "\b<c-r>"\b"<cr>:cw<cr>
" nnoremap <leader>a :grep! "\b<c-r><c-w>\b"
vnoremap <leader>a y:Ag <c-r><cr>:cw<cr>
nnoremap <leader>a :Ag <c-r><c-w>
nnoremap K *N:grep! "\b<c-r><c-w>\b"<cr>:cw<cr>
" Define "Ag" command
" command -nargs=+ -complete=file -bar Ag silent! grep! <args> | cwindow | redraw!
" }}}

" Filetype specific handling {{{
" only do this part when compiled with support for autocommands
if has("autocmd")
    augroup invisible_chars "{{{
        au!

        " Show invisible characters in all of these files
        autocmd filetype vim setlocal list
        autocmd filetype python,rst setlocal list
        autocmd filetype ruby setlocal list
        autocmd filetype javascript,css setlocal list
    augroup end "}}}

    augroup vim_files "{{{
        au!

        " Bind <F1> to show the keyword under cursor
        " general help can still be entered manually, with :h
        autocmd filetype vim noremap <buffer> <F1> <Esc>:help <C-r><C-w><CR>
        autocmd filetype vim noremap! <buffer> <F1> <Esc>:help <C-r><C-w><CR>
    augroup end "}}}

    augroup html_files "{{{
        au!

        " This function detects, based on HTML content, whether this is a
        " Django template, or a plain HTML file, and sets filetype accordingly
        fun! s:DetectHTMLVariant()
            let n = 1
            while n < 50 && n < line("$")
                " check for django
                if getline(n) =~ '{%\s*\(extends\|load\|block\|if\|for\|include\|trans\)\>'
                    set ft=htmldjango.html
                    return
                endif
                let n = n + 1
            endwhile
            " go with html
            set ft=html
        endfun

        " Auto-tidy selection
        vnoremap <leader>x :!tidy -q -i --show-errors 0 --show-body-only 1 --wrap 0<cr><cr>

        autocmd BufNewFile,BufRead *.html,*.htm,*.j2 call s:DetectHTMLVariant()
    augroup end " }}}

    augroup python_files "{{{
        au!

        " This function detects, based on Python content, whether this is a
        " Django file, which may enabling snippet completion for it
        fun! s:DetectPythonVariant()
            let n = 1
            while n < 50 && n < line("$")
                " check for django
                if getline(n) =~ 'import\s\+\<django\>' || getline(n) =~ 'from\s\+\<django\>\s\+import'
                    set ft=python.django
                    "set syntax=python
                    return
                endif
                let n = n + 1
            endwhile
            " go with html
            set ft=python
        endfun
        autocmd BufNewFile,BufRead *.py call s:DetectPythonVariant()

        " PEP8 compliance (set 1 tab = 4 chars explicitly, even if set
        " earlier, as it is important)
        autocmd filetype python setlocal textwidth=78
        autocmd filetype python match ErrorMsg '\%>120v.\+'

        " But disable autowrapping as it is super annoying
        autocmd filetype python setlocal formatoptions-=t

        " Folding for Python (uses syntax/python.vim for fold definitions)
        "autocmd filetype python,rst setlocal nofoldenable
        "autocmd filetype python setlocal foldmethod=expr

        " Python runners
        autocmd filetype python noremap <buffer> <F5> :w<CR>:!python %<CR>
        autocmd filetype python inoremap <buffer> <F5> <Esc>:w<CR>:!python %<CR>
        autocmd filetype python noremap <buffer> <S-F5> :w<CR>:!ipython %<CR>
        autocmd filetype python inoremap <buffer> <S-F5> <Esc>:w<CR>:!ipython %<CR>

        " Automatic insertion of breakpoints
        autocmd filetype python nnoremap <buffer> <leader>bp :normal oimport pdb; pdb.set_trace()  # TODO: BREAKPOINT  # noqa<Esc>

        " Toggling True/False
        autocmd filetype python nnoremap <silent> <C-t> mmviw:s/True\\|False/\={'True':'False','False':'True'}[submatch(0)]/<CR>`m:nohlsearch<CR>

        " Run a quick static syntax check every time we save a Python file
        autocmd BufWritePost *.py call Flake8()

        " Defer to isort for sorting Python imports (instead of using Unix sort)
        autocmd filetype python nnoremap <leader>s mX:%!isort -<cr>`X:redraw!<cr>
    augroup end " }}}

    augroup js_files "{{{
        au!


        " au FileType javascript setlocal foldmethod=syntax


        autocmd filetype javascript setlocal foldmethod=syntax

        " Defer to import-sort for sorting JavaScript imports (instead of using Unix sort)
        " autocmd filetype javascript nnoremap <leader>s :StopAutoSortImport<cr>:w<cr>:SortImport<cr>:StartAutoSortImport<cr>
        autocmd filetype javascript nnoremap <leader>s :write<cr>

    augroup end " }}}

    augroup clojure_files "{{{
        au!

        " Set up <leader>r to run the entire file with vim-fireplace
        autocmd filetype clojure nnoremap <leader>r :%Eval<cr>
        autocmd filetype clojure RainbowParenthesesActivate
        autocmd filetype clojure RainbowParenthesesLoadRound
        autocmd filetype clojure RainbowParenthesesLoadSquare
        autocmd filetype clojure RainbowParenthesesLoadBraces
    augroup end " }}}

    augroup supervisord_files "{{{
        au!

        autocmd BufNewFile,BufRead supervisord.conf set ft=dosini
    augroup end " }}}

    augroup markdown_files "{{{
        au!

        autocmd filetype markdown noremap <buffer> <leader>p :w<CR>:!open -a 'Marked 2' %<CR><CR>
    augroup end " }}}

    augroup ruby_files "{{{
        au!

    augroup end " }}}

    augroup rst_files "{{{
        au!

        " Auto-wrap text around 74 chars
        autocmd filetype rst setlocal textwidth=74
        autocmd filetype rst setlocal formatoptions+=nqt
        autocmd filetype rst match ErrorMsg '\%>74v.\+'
    augroup end " }}}

    augroup css_files "{{{
        au!

        autocmd filetype css,less setlocal foldmethod=marker foldmarker={,}
    augroup end "}}}

    augroup javascript_files "{{{
        au!

        autocmd filetype javascript setlocal expandtab
        autocmd filetype javascript setlocal listchars=trail:·,extends:#,nbsp:·
        autocmd filetype javascript setlocal foldmethod=marker foldmarker={,}

        " Toggling True/False
        autocmd filetype javascript nnoremap <silent> <C-t> mmviw:s/true\\|false/\={'true':'false','false':'true'}[submatch(0)]/<CR>`m:nohlsearch<CR>

        " Enable insertion of "debugger" statement in JS files
        autocmd filetype javascript nnoremap <leader>b Odebugger;<esc>

    augroup end "}}}

    augroup textile_files "{{{
        au!

        autocmd filetype textile set tw=78 wrap

        " Render YAML front matter inside Textile documents as comments
        autocmd filetype textile syntax region frontmatter start=/\%^---$/ end=/^---$/
        autocmd filetype textile highlight link frontmatter Comment
    augroup end "}}}

    augroup git_files "{{{
        au!

        " Don't remember the last cursor position when editing commit
        " messages, always start on line 1
        autocmd filetype gitcommit call setpos('.', [0, 1, 1, 0])
    augroup end "}}}

    " Trigger autoread when changing buffers or coming back to vim in terminal.
    au FocusGained,BufEnter * :silent! !

    " automatically rebalance windows on vim resize
    autocmd VimResized * :wincmd =
endif
" }}}

" Restore cursor position upon reopening files {{{
autocmd BufReadPost *
    \ if &filetype != "gitcommit" && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif


autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>
" }}}

" Extra vi-compatibility {{{
" set extra vi-compatible options
" set cpoptions+=$     " when changing a line, don't redisplay, but put a '$' at
                     " the end during the change
set formatoptions-=o " don't start new lines w/ comment leader on pressing 'o'
au filetype vim set formatoptions-=o
                     " somehow, during vim filetype detection, this gets set
                     " for vim files, so explicitly unset it again
au filetype crontab setlocal backupcopy=yes
                     " editing crontab files needs to happen in-place
" }}}

"""""""""""""""""""""""""""
" Source Plugins
"""""""""""""""""""""""""""
source ~/.vim/plugins.vim

" Gui Options {{{

if has("gui_running")
    " Remove toolbar, left scrollbar and right scrollbar
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    set guifont=Source\ Code\ Pro\ Light:h13 linespace=0
else
    set bg=dark
endif

" set t_Co=256
" if &t_Co == 8 && $TERM !~# '^linux'
"   set t_Co=16
" endif
set bg=dark
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext
"
syntax on
let g:onedark_termcolors=256
colorscheme onedark
" colorscheme Tomorrow-Night-Bright
" }}}


" Statusline with highlight groups (requires Powerline font, using Solarized theme)
set statusline=
set statusline+=%(%{&buflisted?bufnr('%'):''}\ \ %)
set statusline+=%< " Truncate line here
set statusline+=%f\  " File path, as typed or relative to current directory
set statusline+=%{&modified?'+\ ':''}
set statusline+=%{&readonly?'\ ':''}
set statusline+=%1*\  " Set highlight group to User1
set statusline+=%= " Separation point between left and right aligned items
set statusline+=\ %{&filetype!=#''?&filetype:'none'}
set statusline+=%(\ %{(&bomb\|\|&fileencoding!~#'^$\\\|utf-8'?'\ '.&fileencoding.(&bomb?'-bom':''):'')
  \.(&fileformat!=#(has('win32')?'dos':'unix')?'\ '.&fileformat:'')}%)
set statusline+=%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)
set statusline+=\ %* " Restore normal highlight
set statusline+=\ %{&number?'':printf('%2d,',line('.'))} " Line number
set statusline+=%-2v " Virtual column number
set statusline+=\ %2p%% " Percentage through file in lines as in |CTRL-G|

" " Logic for customizing the User1 highlight group is the following
" " - if StatusLine colors are reverse, then User1 is not reverse and User1 fg = StatusLine fg
hi StatusLine cterm=reverse gui=reverse ctermfg=14 ctermbg=8 guifg=#93a1a1 guibg=#002732
hi StatusLineNC cterm=reverse gui=reverse ctermfg=11 ctermbg=0 guifg=#657b83 guibg=#073642
"
" JavaScript configuration ------------------------------------------------ {{{

" let g:javascript_plugin_jsdoc = 1
" let g:javascript_plugin_flow = 1

" }}}


" Make the Line Numbers Dark Grey to make it more readable against dark bg
highlight LineNr  ctermfg=DarkGrey guifg=DarkGrey


let g:NERDTreeWinPos = "left"
let g:NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.js.map$', '\.DS_Store$']
let NERDTreeIgnore=['.git$[[dir]]', '.swp']
let g:NERDTreeWinSize=25
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeChDirMode                   = 2
augroup nerd_loader
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END
map <silent> <C-e> :NERDTreeToggle<CR>

" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg)
  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guifg='. a:guifg
  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
"
" call NERDTreeHighlightFile('js', 226, 'none', '#E53378')
call NERDTreeHighlightFile('js', 226, 'none', '#FFFF0D')
call NERDTreeHighlightFile('html', 202, 'none', '#FC4709')
call NERDTreeHighlightFile('json', 223, 'none', '#FECEA0')
call NERDTreeHighlightFile('scss', 44, 'none', '#1AD0CE')
call NERDTreeHighlightFile('css', 44, 'none', '#1AD0CE')
call NERDTreeHighlightFile('md', 208, 'none', '#FD720A')
call NERDTreeHighlightFile('rb', 197, 'none', '#E53378')
call NERDTreeHighlightFile('php', 140, 'none', '#9E6FCD')
call NERDTreeHighlightFile('gif', 36, 'none', '#15A274')
call NERDTreeHighlightFile('jpg', 36, 'none', '#15A274')
call NERDTreeHighlightFile('png', 36, 'none', '#15A274')

" ALE config {{{


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
" let g:ale_fixers = {}
" let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers = {'javascript.jsx': ['prettier'], 'typescript': ['prettier'], 'javascript': ['prettier'], 'typescript.tsx': ['prettier']}
let g:ale_fix_on_save = 0
" nmap <Leader>py <Plug>(Prettier)

nmap <Leader>pf <Plug>(ale_fix)
let g:ale_javascript_prettier_options = '--single-quote --print-width 80 --trailing-comma all'
" let g:ale_javascript_prettier_options = '--single-quote --no-semi --print-width 80'
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
    au BufRead,BufNewFile *.ts		setlocal filetype=typescript
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
    au BufNewFile, BufRead *.jsx set filetype=javascript.jsx

augroup END
augroup filetype javascript syntax=javascript

" function to display ALE in airline
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


" " let g:ale_enabled = 1
" let g:ale_sign_error = 'ㄨ' " error sign
" let g:ale_sign_warning = '>>' " warning sign
" let g:ale_completion_enabled = 0
" let g:ale_lint_delay = 200   " millisecs
" let g:ale_lint_on_text_changed = 'always'  " never/insert/normal/always
" let g:ale_lint_on_enter = 1
" let g:ale_lint_on_filetype_changed = 1
" let g:ale_lint_on_save = 1
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_fix_on_save = 0
" " let g:ale_open_list = 1
" let g:ale_javascript_prettier_options = '--single-quote --print-width 80 --trailing-comma all'
" nmap <Leader>pf <Plug>(ale_fix)
"
" let g:ale_linters = {
" \   'javascript.jsx': ['eslint', 'flow'],
" \   'javascript': ['eslint', 'flow'],
" \}
" let g:ale_fixers = {
" \   'javascript.jsx': ['eslint', 'prettier'],
" \   'javascript': ['eslint', 'prettier'],
" \}
" " }}}

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


map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
"
"
hi Normal ctermfg=White guifg=White
" hi Comment guifg=#5c6360
" hi jsParensError guifg=White
" vim:foldmethod=marker:foldlevel=0
