""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', { 'do': 'make' } " Interactive command execution
Plug 'Shougo/neomru.vim' " Most Recently Used
" Plug 'Shougo/unite.vim' " Unite. The interface to rule almost everything

""""""""""""""""""
" Colors and Syntax
""""""""""""""""""
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'flazz/vim-colorschemes'
Plug 'ap/vim-css-color' " Preview colors in source code
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " SCSS syntax highlighting
Plug 'ryanoasis/vim-devicons' " Add filetype glyphs (icons)
Plug 'whatyouhide/vim-gotham'
Plug 'mhartington/oceanic-next'
Plug 'altercation/vim-colors-solarized'
Plug 'hail2u/vim-css3-syntax' " CSS3 syntax support

" AirLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""""""""""""""""""
" FZF
""""""""""""""""""
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

""""""""""""""""""
"Javascript Syntax
""""""""""""""""""
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'jelera/vim-javascript-syntax', {'for':['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'fleischie/vim-styled-components', { 'for': ['javascript', 'javascript.jsx'] } " Syntax for styled-components
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

""""""""""""""""""""""""""""""""
" Tern Deoplete and YouComple Me
""""""""""""""""""""""""""""""""
Plug 'ternjs/tern_for_vim', {'do': 'npm install', 'for': ['javascript', 'javascript.jsx'] }

if has('nvim')
  " Asynchronous completion for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
  " Tern-based JavaScript editing support
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }
else
  " Code completion
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
endif

""""""""""""""""""
" Tmux
""""""""""""""""""
Plug 'edkolev/tmuxline.vim' " Tmux statusline generator with support for airline
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits

""""""""""""""""""
" Snippets
""""""""""""""""""
Plug 'epilande/vim-es2015-snippets', { 'for': ['javascript', 'javascript.jsx'] } " ES2015 code snippets
Plug 'epilande/vim-react-snippets', { 'for': ['javascript', 'javascript.jsx'] } " React code snippets
Plug 'SirVer/ultisnips' " Ultimate snippet solution
Plug 'honza/vim-snippets' " Snippet files for various programming languages

""""""""""""""""""
" Syntastic And Ale
""""""""""""""""""

Plug 'w0rp/ale'
" Plug 'scrooloose/syntastic' "Run linters and display errors etc

""""""""""""""""""
" MISC
""""""""""""""""""

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'airblade/vim-gitgutter' " Shows a git diff in the gutter
Plug 'Valloric/MatchTagAlways' " Color scheme
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
Plug 'troydm/zoomwintab.vim' " Zoom in/out of windows
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'dyng/ctrlsf.vim' " Code search and view tool
Plug 'jlanzarotta/bufexplorer' " BufExplorer quickly and easily switch between buffer
Plug 'tomtom/tcomment_vim' " Comment stuff out
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' } " Undo history visualizer
Plug 'editorconfig/editorconfig-vim'
" Visually select larger regions of text using the same key combination
Plug 'terryma/vim-expand-region' " press + to expand and _ to shrink


""""""""""""""""""""""""""""""""""""
" MIGHT DELETE DONT KNOW WHAT THEY DO
""""""""""""""""""""""""""""""""""""
Plug 'MarcWeber/vim-addon-mw-utils' " Cache file automatically
Plug 'suan/vim-instant-markdown', { 'for': 'markdown' } " Instant Markdown previews
Plug 'jceb/vim-orgmode', { 'for': 'org' } " Vim Orgmode
Plug 'tpope/vim-speeddating', { 'for': 'org' } " Increment dates, times, and more
Plug 'wellle/targets.vim' " Provides additional text objects
Plug 'Konfekt/FastFold' " Speed up Vim by updating folds only when called-for
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Markdown syntax highlighting
" Plug 'terryma/vim-multiple-cursors' " Sublime Text style multiple selections
" Plug 'easymotion/vim-easymotion' " Vim motions on speed

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGIN SPECIFC CONFIGURATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'
map <leader>o :BufExplorer<cr>

""""""""""""""""""""""""""""""
" MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400

""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let g:NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.js.map$', '\.DS_Store$']
let g:NERDTreeWinSize=25
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <silent> <C-e> :NERDTreeToggle<CR>
let g:used_javascript_libs = 'angularjs,react,jquery,underscore,angularuirouter,flux,requirejs,jasmine,chai,d3'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_react = 1
autocmd BufReadPre *.js let b:javascript_lib_use_flux = 1
autocmd BufReadPre *.js let b:javascript_lib_use_requirejs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_jasmine = 1
autocmd BufReadPre *.js let b:javascript_lib_use_chai = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0
" autocmd vimenter * if @% !~# '.vimrc' && @% !~# '.bash_profile' && @% !~# '.eslintrc.json'| NERDTree | endif  " Open NERDTREE when vim opens
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if only NERDTree is open

""""""""""""""""""""""""""""""
" vim airline
""""""""""""""""""""""""""""""
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline_powerline_fonts = 1
if has("gui_running")
  let g:airline_theme="luna"
else
  let g:airline_theme="quantum"
endif

" Automatically truncate sections
let g:airline#extensions#default#section_truncate_width = {
  \ 'b': 100,
  \ 'x': 100,
  \ 'y': 105,
  \ 'z': 50,
  \ 'warning': 50,
  \ }

""""""""""""""""""""""""""""""
" vim-fugitive
""""""""""""""""""""""""""""""
map <leader>gg :GitGutterToggle<CR>
map <leader>gs :Gstatus<CR>
set diffopt+=vertical

""""""""""""""""""""""""""""""
" Deoplete
""""""""""""""""""""""""""""""
if has('nvim')
  " Enable deoplete.
  let g:deoplete#enable_at_startup = 1

  if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
  endif

  augroup omnifuncs
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=tern#Complete
    " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  augroup end
  "Add extra filetypes
  " let g:tern#filetypes = [
  "                 \ 'jsx',
  "                 \ 'javascript.jsx',
  "                 \ 'vue',
  "                 \ '...'
  "                 \ ]
  let g:tern_request_timeout = 1
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 0

"   let g:deoplete#omni#functions = {}
"   let g:deoplete#omni#functions.javascript = [
"     \ 'tern#Complete',
"     \ 'jspc#omni'
"   \]
"   let g:deoplete#sources = {}
"   let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
"   let g:tern#command = ['tern']
"   let g:tern#arguments = ['--persistent']
  " autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
  " inoremap <expr><TAB> pumvisible() ?
  "\<C-n>" :
  ""\<TAB>"

  set completeopt-=preview

  " Automatically close preview window after autocompletion
  autocmd CompleteDone * if pumvisible() == 0 | pclose | endif
endif


""""""""""""""""""""""""""""""
" Ultisnips
""""""""""""""""""""""""""""""
" Trigger configuration
let g:UltiSnipsExpandTrigger="<C-l>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:UltiSnipsEditSplit="vertical"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:SuperTabDefaultCompletionType = '<C-n>'

""""""""""""""""""""""""""""""
" vim-instant-markdown
""""""""""""""""""""""""""""""
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0

""""""""""""""""""""""""""""""
" vim markdown
""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1

""""""""""""""""""""""""""""""
" undotree
""""""""""""""""""""""""""""""
map <leader>u :UndotreeToggle<CR>
let g:undotree_WindowLayout = 3
let g:undotree_SplitWidth = 35
let g:undotree_SetFocusWhenToggle = 1

if has("persistent_undo")
  set undodir='~/.undodir/'
  set undofile
endif

""""""""""""""""""""""""""""""
" ZoomWin
""""""""""""""""""""""""""""""
nnoremap <silent> <leader>z :ZoomWinTabToggle<cr>

""""""""""""""""""""""""""""""
" CtrlSF Seach Project for word
""""""""""""""""""""""""""""""
nmap <leader>i <Plug>CtrlSFPrompt
vmap <leader>i <Plug>CtrlSFVwordPath
" Toggle CtrlSF result display
map <leader>ii :CtrlSFToggle<CR>

let g:ctrlsf_indent = 2

""""""""""""""""""""""""""""""
" Tmuxline
""""""""""""""""""""""""""""""
let g:tmuxline_preset = {
  \"a"    : "#S",
  \"b"    : "#(ifconfig en0 | grep 'inet ' | awk '{print $2}')",
  \"c"    : "",
  \"win"  : "#I  #W",
  \"cwin" : "#I  #W",
  \"x"    : ["♫ #(source ~/.tmux/current-pianobar-song.sh)"],
  \"y"    : ["%a", "%b %d", "%R"],
  \"z"    : "#h",
  \'options' : {'status-justify' : 'left'}}

let g:tmuxline_separators = {
  \ 'left' : '',
  \ 'left_alt': '',
  \ 'right' : '',
  \ 'right_alt' : '',
  \ 'space' : ' '}


""""""""""""""""""""""""""""""
" vim-jsdoc
""""""""""""""""""""""""""""""
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1

""""""""""""""""""""""""""""""
" vim-javascript
""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1 " Enables syntax highlighting for JSDocs.

""""""""""""""""""""""""""""""
" vim-jsx
""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:javascript_enable_domhtmlcss = 1 " html tags in js and jsx files?

""""""""""""""""""""""""""""""
" ALE
""""""""""""""""""""""""""""""
let g:ale_sign_error = 'ㄨ' " error sign
let g:ale_sign_warning = '>>' " warning sign
let g:ale_open_list = 0 " this keeps the loclist lint errors from showing up in a vim pane
let g:ale_lint_on_enter = 1 " 0 disables linting on enter
let g:ale_lint_on_save = 1 " lint on save instead
let g:ale_lint_on_text_changed = 0
let g:ale_set_quickfix = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint'],
\}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

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

""""""""""""""""""""""""""""""
" EditorConfig
""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

""""""""""""
" indentLine
""""""""""""
let g:indentLine_color_gui = '#65737E'

""""""""""""""""""
" Match Tag Always
""""""""""""""""""
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript' : 1,
    \ 'javascript.jsx' : 1,
    \}
nnoremap <leader>j :MtaJumpToOtherTag<cr>

"""""""""""
" SYNTAStIC
"""""""""""" Syntastic and ESLint
" nnoremap <leader>, :SyntasticToggle<cr>
" nnoremap <leader>,, :SyntasticCheck<cr>
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['javascript'], 'passive_filetypes': [] }
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_loc_list_height = 5
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_javascript_checkers = ['eslint']
"
" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'
"
" " let g:syntastic_error_symbol = 'ㄨ'
" " let g:syntastic_style_error_symbol = 'ㄨ'
" " let g:syntastic_warning_symbol = 'ㄨ'
" " let g:syntastic_style_warning_symbol = 'ㄨ'
"
" highlight link SyntasticErrorSign SignColumn
" highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn
"
" " syntastic starts in passive mode
" autocmd VimEnter * SyntasticToggleMode

""""""""""""""""""""""""""""""
" vim-easymotion
""""""""""""""""""""""""""""""
" map s <Plug>(easymotion-s)
" map <leader>s <Plug>(easymotion-s2)
" map <leader>_ <Plug>(easymotion-prefix)

" " match lower & upper case
" let g:EasyMotion_smartcase = 1

" let g:EasyMotion_use_smartsign_us = 1

" map <leader>l <Plug>(easymotion-lineforward)
" map <leader>j <Plug>(easymotion-j)
" map <leader>k <Plug>(easymotion-k)
" map <leader>h <Plug>(easymotion-linebackward)

" let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

""""""""""""""""""""""""""""""
" Vim Orgmode
""""""""""""""""""""""""""""""
" let g:org_export_emacs="/usr/local/bin/emacs"
" let g:org_agenda_files = ['~/Desktop/Notes/daily-notes.org']
" let g:org_todo_keywords = ['TODO', '|', 'DONE']
" let g:org_aggressive_conceal = 1

""""""""""""""""""""""""""""""
" Unite.vim
""""""""""""""""""""""""""""""

" Use the fuzzy matcher for everything
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#converter_default#use(['converter_relative_word'])
" call unite#filters#sorter_default#use(['sorter_rank'])
" call unite#custom#source('file_mru,file_rec,file_rec/async', 'converters', 'converter_relative_word')

" Restrict mru to display files for current project
" call unite#custom#source(
"   \ 'file_mru', 'matchers',
"   \ ['matcher_project_files', 'matcher_fuzzy'])

" call unite#custom#profile('default', 'context', {
"   \ 'cursor_line_highlight' : 'CursorLine',
"   \ 'start_insert': 1,
"   \ 'winheight': 10,
"   \ 'direction': 'botright',
"   \ })

" Set up some custom ignores
" call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
"   \ 'ignore_pattern', join([
"   \ '\.git/',
"   \ 'tmp/',
"   \ '.sass-cache',
"   \ 'node_modules/',
"   \ 'bower_components/',
"   \ 'dist/',
"   \ '.pyc',
"   \ ], '\|'))

" let g:unite_data_directory='~/.vim/.cache/unite'
" let g:unite_source_history_yank_enable=1
" let g:unite_source_rec_max_cache_files=5000
" let g:unite_source_file_mru_limit=200
" let g:unite_source_rec_async_command =
"       \ ['ag', '--follow', '--nocolor', '--nogroup',
"       \  '--hidden', '-g', '']
" let g:unite_source_grep_command = 'ag'
" let g:unite_source_grep_default_opts = '-s -H --nocolor --nogroup --column'
" let g:unite_source_grep_recursive_opt = ''
" let g:unite_prompt='❯ '

" nnoremap <C-f> :<C-u>Unite -buffer-name=files file_mru file_rec/async:!<CR>
" nnoremap <leader>f :<C-u>Unite -no-split -no-resize -direction=topleft -buffer-name=mru file_mru<CR>
" nnoremap <leader>y :<C-u>Unite -no-start-insert history/yank<CR>
" nnoremap <leader>/ :<C-u>Unite grep:.<CR>

" Custom mappings for the unite buffer
" autocmd FileType unite call s:unite_keymaps()

" function! s:unite_keymaps()
"   " Enable navigation with control-j and control-k in insert mode
"   imap <buffer> <C-j>   <Plug>(unite_select_next_line)
"   imap <buffer> <C-k>   <Plug>(unite_select_previous_line)

"   " Exit unite with Esc while in insert mode
"   nmap <buffer> <Esc>   <Plug>(unite_exit)
"   imap <buffer> <Esc>   <Plug>(unite_exit)
" endfunction

""""""""""""""""""""""""""""""
" vim-multiple-cursors
""""""""""""""""""""""""""""""
" let g:multi_cursor_next_key="\<C-s>"
