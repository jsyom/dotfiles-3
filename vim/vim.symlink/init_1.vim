" Allow vim to break compatibility with vi
" set nocompatible

" Map Leader to space
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
if has ('autocmd')
  autocmd!
endif
" if (has("termguicolors"))
"   set termguicolors
"   set t_ut=
" endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" => BASIC SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
" set clipboard=unnamed " allow copy to system clipboard for copy paste
if has('unnamedplus')
  set clipboard=unnamedplus,unnamed
else
  " Vim now also uses the selection system clipboard for default yank/paste.
  set clipboard+=unnamed
endif
set number " Show current line number
" Turn backup off
set nobackup
set nowritebackup
set nowb
set splitbelow
set splitright
set relativenumber " Show relative line numbers
set cursorline " Highlight cursor current line
set history=700 " Set how many lines of history VIM has to remember
set backspace=2
set noswapfile
set showcmd " display incomplete commands
set autowrite " Automatically :write before running commmands
set autoread " set to auto read when a file is changed from the outside

" Trigger autoread when changing buffers or coming back to vim in terminal.
au FocusGained,BufEnter * :silent! !

" Fast editing of vimrc
map <leader>e :e! ~/.vimrc<cr>
set matchpairs+=<:> " can tab around brackets

let g:html_indent_tags = 'li\|p'
" This changes the default display of tab and CR chars in list mode
set list listchars=nbsp:·
set listchars=tab:▸\ ,trail:·,precedes:←,extends:→ ",eol:¬,
set so=7 " Set 7 lines to the cursor - when moving vertically using j/k
set path=$PWD/**
" set path+=**
" set autochdir
set ruler "Always show current position
set cmdheight=1 " Height of the command bar
set hid " A buffer becomes hidden when it is abandoned
set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases
set hlsearch " Highlight search results
set incsearch " Makes search act like search in modern browsers
set lazyredraw " Don't redraw while executing macros (good performance config)
set magic " For regular expressions turn magic on
set showmatch " Show matching brackets when text indicator is over them
set mat=2 " How many tenths of a second to blink when matching brackets
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldmethod=manual
set foldnestmax=20
set nofoldenable
" set foldlevelstart=20
" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set encoding=utf8 " Set utf8 as standard encoding and en_US as the standard language
set ffs=unix,dos,mac " Use Unix as the standard file type
" When you type the first tab, it will complete as much as possible, the second
" tab hit will provide a list, the third and subsequent tabs will cycle through
" completion options so you can complete the file without further keys
set wildmode=list:longest,full
" set wildmode=longest,list,full
set wildmenu " completion with menu
" none of these should be word dividers, so make them not be
set iskeyword+=_,$,@,%,#
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
" set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif
if has("win16") || has("win32")
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set ttyfast
  set mouse=a
endif

" this makes sure that shell scripts are highlighted
" as bash scripts and not sh scripts
let g:is_posix = 1

" if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
"   syntax on
" endif

" if (&t_Co > 2 || has("gui_running")) && has("syntax")
"    syntax on  " turn syntax highlighting on, when terminal has colors or in GUI
" endif
"
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
" syntax on
""""""""""""""""""""""""""""""""""""""""""""""""""
" => LOAD PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/plugins.vim

" Theme, Colorscheme, & Font
" if has("gui_running")
"   colorscheme luna
"   " set guifont=Source\ Code\ Pro\ for\ Powerline:h13
"   set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h12
"   set linespace=2
"   " set noantialias
" else
"   try
"     colorscheme onedark
"     " set guicursor=
"   catch
"   endtry
" endif
"
" function! ReverseBackground()
"   if &background=="light"
"     set background=dark
"     colorscheme onedark
"   else set background=light
"     colorscheme solarized
"     execute 'AirlineTheme solarized'
"   endif
" endfunction
" command! Invbg call ReverseBackground()
"
"
" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" => USER INTERFACE
""""""""""""""""""""""""""""""""""""""""""""""""""
set textwidth=80
set colorcolumn=+1
" Linebreak on 500 characters
set lbr
set tw=500
" autocmd BufRead,BufNewFile *.md setlocal textwidth=80
autocmd BufRead,BufNewFile * setlocal textwidth=80


""""""""""""""""""""""""""""""""""""""""""""""""""
" => FILES, BACKUPS, AND UNDO
""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile
" Turn on presistent undo
" means that you can undo even when you close a buffer/Vim
try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
catch
endtry


""""""""""""""""""""""""""""""""""""""""""""""""""
" => TEXT, TAB, AND INDENT RELATED
""""""""""""""""""""""""""""""""""""""""""""""""""
" Strip trailing spaces on save
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile .{babel,eslint,stylelint}rc set filetype=json

"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>
"Below is to fix issues with the ABOVE mappings in quickfix window
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

"update dir to current file
" autocmd BufEnter * silent! cd %:p:h
" autocmd BufEnter * silent! lcd %:p:h
" autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
" autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
""""""""""""""""""""""""""""""""""""""""""""""""""
" => VISUAL MODE RELATED
""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""
" => MOVING AROUND
""""""""""""""""""""""""""""""""""""""""""""""""""
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


" Map Alt-[h,j,k,l] for resizing a window split
nnoremap <silent> <left> :vertical resize -1<CR>
nnoremap <silent> <down> :resize -1<CR>
nnoremap <silent> <up> :resize +1<CR>
nnoremap <silent> <right> :vertical resize +1<CR>

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
" map <leader>ba :1,1000 bd!<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
" Remember info about open buffers on close
set viminfo^=%
" Switch to the directory of the open buffer
noremap <leader>cd :cd %:p:h<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""
" => STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

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

" ------------------------ 8< ------------------------

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

" Logic for customizing the User1 highlight group is the following
" - if StatusLine colors are reverse, then User1 is not reverse and User1 fg = StatusLine fg
hi StatusLine cterm=reverse gui=reverse ctermfg=14 ctermbg=8 guifg=#93a1a1 guibg=#002732
hi StatusLineNC cterm=reverse gui=reverse ctermfg=11 ctermbg=0 guifg=#657b83 guibg=#073642
hi User1 ctermfg=14 ctermbg=0 guifg=#93a1a1 guibg=#073642


" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


" Custom status bar
" set statusline=\ Filename:%-8t                               " Filename
" set statusline+=\ Encoding:\%-8{strlen(&fenc)?&fenc:'none'}  " File encoding
" set statusline+=\ Line\ Endings:%-6{&ff}                     " Line Endings
" set statusline+=\ Type:%-12y                                 " File Type
" set statusline+=%=%h%m%r                                     " Flags
" set statusline+=\ %l/%L                                      " Cursor line and total lines
" set statusline+=\ %c                                         " Cursor column
" set statusline+=\ %P                                         " Percentage through file
"
" " Color status bar
" highlight statusline ctermfg=cyan ctermbg=black guifg=cyan guibg=black
"
" " Hide tabline
" set showtabline=1

""""""""""""""""""""""""""""""""""""""""""""""""""
" => SPELLING CHECK
""""""""""""""""""""""""""""""""""""""""""""""""""
hi SpellBad cterm=underline,bold ctermfg=red gui=underline,bold guifg=red
" Toggle and untoggle spell checking
map <leader>sc :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

""""""""""""""""""""""""""""""""""""""""""""""""""
" => MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
" Exit insert mode with `jk`
inoremap jk <ESC>`^
nnoremap ; :

" Fast saving
nmap <leader>w :w!<cr>

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

" Trim WhiteSpace
nnoremap <Leader>tws :%s/\s\+$//e<CR>

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" " Set Syntax
map <leader>sy :set syntax=

" Quick quit
map <leader>qq :q<cr>

" Quick file reload
map <leader>r :e<cr>

" Quick Open Notes
" Directory to notes folder
" let g:notes_folder = '~/Desktop/Notes/'
let g:notes_folder = '~/Notes/'
" Project specific notes
let g:notes = g:notes_folder . 'Projects/' . fnamemodify(getcwd(), ':t') . '.md'
let g:note_size = 15
" Open current project notes
map <silent> <leader>n :execute ':topleft split ' . g:notes<cr>:execute ':resize' . g:note_size<cr>
" Open daily notes
let g:daily_notes = g:notes_folder . 'Daily/daily-notes.org'
map <silent> <leader>nn :execute ':topleft split ' . g:daily_notes<cr>:execute ':resize' . g:note_size<cr>

" Toggle quotes for json file
map <leader>" :call ConcealJsonToggle()<cr>
let g:toggle_json_conceal=0

" List contents of most used registers
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

" Paste in visual mode without updating default register
vnoremap p "_c<Esc>p

" Quick macro invocation with q register
nnoremap Q @q

" Switch between the last two files
nnoremap <leader><leader> <C-^>

" Math macro, do math on current line
nnoremap <leader>= 0v$hyA = <C-r>=<C-r>"<CR><Esc>

" Quickly select text you just pasted
nnoremap gV `[v`]

" Quickly edit your macros
" Usage <leader>m or "q<leader>m
nnoremap <leader>m  :<c-u><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>

" Use very magic
" Everything is special unless escaped
" nnoremap / /\v
" vnoremap / /\v

" Saner behavior of n and N
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

" Search current word without moving cursor
nnoremap <silent> K :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" Easily jump between brackets
" map <S-Tab> %
nnoremap <tab> %
vnoremap <tab> %

nnoremap <expr> <UP> len(getline(line('.')-1)) > 0 ? '{+' : '{-'
nnoremap <expr> <DOWN> len(getline(line('.')+1)) > 0 ? '}-' : '}+'

" JSON formatting with jq
nnoremap <silent> <leader>fj :%!jq '.'<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" => HELPER FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""

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
 inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
 inoremap <S-Tab> <c-n>

" closing tags for xml
" hi xmlTagN ctermfg=203 guifg=#ec5f67

" Set highlight cursor line
hi CursorLine cterm=none ctermbg=8 ctermfg=none

" Style verticle split seporator
" hi VertSplit cterm=none ctermbg=none ctermfg=23

" Change selected text bg color
" newest one
" hi Visual term=reverse cterm=reverse guibg=Grey

" hi Visual cterm=none ctermbg=8 ctermfg=none
" hi Visual cterm=none ctermbg=11 ctermfg=none

" Set folded highlight color
hi Folded ctermbg=10 ctermfg=10
" hi def link jsObjectKey Function
" hi def link js

" Abbreviations - fix common typos
iabbrev funcoitn function
iabbrev functoin function
iabbrev funcotin function
iabbrev retrun return
iabbrev deafult default
iabbrev defult default
iabbrev sumbit submit
iabbrev submut submit
iabbrev consructor constructor
iabbrev constuctor constructor
iabbrev consuctor constructor

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
" call NERDTreeHighlightFile('jade', 149, 'none', '#A0D24D')
" call NERDTreeHighlightFile('rb', 197, 'none', '#E53378')
" call NERDTreeHighlightFile('php', 140, 'none', '#9E6FCD')
" call NERDTreeHighlightFile('svg', 178, 'none', '#CDA109')
" call NERDTreeHighlightFile('gif', 36, 'none', '#15A274')
" call NERDTreeHighlightFile('jpg', 36, 'none', '#15A274')
" call NERDTreeHighlightFile('png', 36, 'none', '#15A274')
" call NERDTreeHighlightFile('hbs', 202, 'none', '#FC4709')

autocmd! BufWritePost .vimrc,*vimrc source %

""""""""""""""""""""""""""""""
" vim-multiple-cursors
""""""""""""""""""""""""""""""
" let g:multi_cursor_next_key="\<C-s>"
