" if &compatible
"   set nocompatible
" endif
""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Plug 'Shougo/vimproc.vim', { 'do': 'make' } " Interactive command execution
Plug 'Shougo/neomru.vim' " Most Recently Used

if has('nvim')
  Plug 'roxma/nvim-completion-manager'
endif

""""""""""""""""""
" Colors and Syntax
""""""""""""""""""
Plug 'rakr/vim-one'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'flazz/vim-colorschemes'
Plug 'ap/vim-css-color' " Preview colors in source code
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " SCSS syntax highlighting
Plug 'ryanoasis/vim-devicons' " Add filetype glyphs (icons)
" Plug 'whatyouhide/vim-gotham'
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
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'leafgarland/typescript-vim'
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'fleischie/vim-styled-components', { 'for': ['javascript', 'javascript.jsx'] } " Syntax for styled-components

""""""""""""""""""""""""""""""""
" Tern Deoplete and YouComple Me
""""""""""""""""""""""""""""""""

if has('nvim')
  Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
  Plug 'roxma/python-support.nvim'
  Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
  " Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }
else
  " Plug 'ternjs/tern_for_vim', {'do': 'npm install', 'for': ['javascript', 'javascript.jsx'] }
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
endif

""""""""""""""""""
" Tmux
""""""""""""""""""
" Plug 'edkolev/tmuxline.vim' " Tmux statusline generator with support for airline
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits

""""""""""""""""""
" Snippets
""""""""""""""""""
Plug 'epilande/vim-es2015-snippets', { 'for': ['javascript', 'javascript.jsx'] } " ES2015 code snippets
Plug 'epilande/vim-react-snippets', { 'for': ['javascript', 'javascript.jsx'] } " React code snippets
Plug 'SirVer/ultisnips' " Ultimate snippet solution
Plug 'honza/vim-snippets' " Snippet files for various programming languages

Plug 'w0rp/ale'

""""""""""""""""""
" MISC
""""""""""""""""""

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'airblade/vim-gitgutter' " Shows a git diff in the gutter
Plug 'Valloric/MatchTagAlways' " XML tag highlight and jump
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
" Plug 'Konfekt/FastFold' " Speed up Vim by updating folds only when called-for
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Markdown syntax highlighting
" Plug 'terryma/vim-multiple-cursors' " Sublime Text style multiple selections
" Plug 'easymotion/vim-easymotion' " Vim motions on speed

call plug#end()

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

"""""""""""""""""""""""""""""
" python.support manager to go with nvim.completion
"""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""
" EMMET
""""""""""""""""""""""""""""""
" let g:user_emmet_leader_key='<C-L>'
imap <leader>q <plug>(emmet-expand-abbr)
" imap <C-l> <plug>(emmet-expand-abbr)
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

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
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
map <silent> <C-e> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""
" vim airline
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled=1
if has("gui_running")
  let g:airline_theme="luna"
else
  let g:airline_theme='luna'
endif
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
  " let g:deoplete#enable_at_startup = 1
  "
  " if !exists('g:deoplete#omni#input_patterns')
  "   let g:deoplete#omni#input_patterns = {}
  " endif

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

  " set completeopt-=preview

  " Automatically close preview window after autocompletion
  autocmd CompleteDone * if pumvisible() == 0 | pclose | endif
endif

" let g:tern_request_timeout = 1
" let g:tern_show_argument_hints = 'on_hold'
" let g:tern_show_signature_in_pum = 0
""""""""""""""""""""""""""""""
" Ultisnips
""""""""""""""""""""""""""""""
" Trigger configuration
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
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
" vim-jsdoc
""""""""""""""""""""""""""""""
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1

""""""""""""""""""""""""""""""
" javascript
""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1 " Enables syntax highlighting for JSDocs.
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:used_javascript_libs = 'angularjs,react,jquery,underscore,angularuirouter,flux,requirejs,jasmine,chai,d3'
let g:javascript_enable_domhtmlcss = 1 " html tags in js and jsx files?

""""""""""""""""""""""""""""""
" ALE
""""""""""""""""""""""""""""""
let g:ale_sign_error = 'ㄨ' " error sign
let g:ale_sign_warning = '>>' " warning sign
let g:ale_open_list = 0 " this keeps the loclist lint errors from showing up in a vim pane
let g:ale_lint_on_enter = 0 " 0 disables linting on enter
let g:ale_lint_on_save = 1 " lint on save instead
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_quickfix = 1
let g:ale_set_highlights = 0
" prettier setup
" let g:ale_fixers = {}
" let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers = {'javascript.jsx': ['prettier'], 'typescript': ['prettier'], 'javascript': ['prettier'], 'typescript.tsx': ['prettier']}
let g:ale_fix_on_save = 0
" nmap <Leader>py <Plug>(Prettier)

nmap <Leader>pf <Plug>(ale_fix)
let g:ale_javascript_prettier_options = '--single-quote --no-semi --print-width 80'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint'],
\}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

augroup FiletypeGroup
    autocmd!
    au BufNewFile, BufRead *.ts set filetype=typescript
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
    au BufNewFile, BufRead *.jsx set filetype=javascript.jsx
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

" ALE gutter sign colors
hi ALEErrorSign ctermfg=203 ctermbg=237 guifg=#ff0000 guibg=#343d46
hi ALEWarningSign ctermfg=221 ctermbg=237 guifg=#fac863 guibg=#343d46
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
"""""""""""""""""
let g:mta_use_matchparen_group = 1

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript' : 1,
    \ 'javascript.jsx' : 1,
    \}
nnoremap <leader>j :MtaJumpToOtherTag<cr>

