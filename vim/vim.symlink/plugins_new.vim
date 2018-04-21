" Note that --sync flag is used to block the execution until the installer finishes.
" (If you're behind an HTTP proxy, you may need to add --insecure option to the curl command.
" In that case, you also need to set $GIT_SSL_NO_VERIFY to true.)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins {{{
call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color' " Preview colors in source code
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " SCSS syntax highlighting
Plug 'ryanoasis/vim-devicons' " Add filetype glyphs (icons)
Plug 'elzr/vim-json'
Plug 'mhartington/oceanic-next'
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'hail2u/vim-css3-syntax' " CSS3 syntax support
Plug 'tomasr/molokai'
Plug 'bling/vim-bufferline'
Plug 'moll/vim-node'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
""""""""""""""""""
"Javascript Syntax
""""""""""""""""""
Plug 'sheerun/vim-polyglot'
" Tern Deoplete and YouComple Me
if has('nvim')
  Plug 'roxma/nvim-completion-manager'
  Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
  Plug 'roxma/python-support.nvim'
  Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
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
Plug 'honza/vim-snippets' " Snippet files for various programming languages
Plug 'SirVer/ultisnips' " Ultimate snippet solution

Plug 'w0rp/ale'

" MISC
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'airblade/vim-gitgutter' " Shows a git diff in the gutter
Plug 'troydm/zoomwintab.vim' " Zoom in/out of windows
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'dyng/ctrlsf.vim' " Code search and view tool
Plug 'jlanzarotta/bufexplorer' " BufExplorer quickly and easily switch between buffer
Plug 'Yggdroot/indentLine'
Plug 'tomtom/tcomment_vim' " Comment stuff out
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
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

" Plug 'Valloric/MatchTagAlways' " XML tag highlight and jump
" Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
" Plug 'Konfekt/FastFold' " Speed up Vim by updating folds only when called-for
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Markdown syntax highlighting
" Plug 'terryma/vim-multiple-cursors' " Sublime Text style multiple selections
" Plug 'easymotion/vim-easymotion' " Vim motions on speed

" Plug 'Shougo/vimproc.vim', { 'do': 'make' } " Interactive command execution
" Plug 'Shougo/neomru.vim' " Most Recently Used
" Plug 'metakirby5/codi.vim'
" Colors and Syntax
" Plug 'trevordmiller/nova-vim'
" Plug 'rakr/vim-one'
" Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'jelera/vim-javascript-syntax', {'for':['javascript', 'javascript.jsx']}
" Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'leafgarland/typescript-vim'
" Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }
" Plug 'Quramy/tsuquyomi'
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'fleischie/vim-styled-components', { 'for': ['javascript', 'javascript.jsx'] } " Syntax for styled-components
call plug#end()





" call plug#begin('~/.vim/plugged')
"
" Plug 'trevordmiller/nova-vim'
" Plug 'rakr/vim-one'
" Plug 'tomasr/molokai'
" Plug 'altercation/vim-colors-solarized'
"
"
" Plug 'troydm/zoomwintab.vim' " Zoom in/out of windows
" Plug 'ervandew/supertab'
" Plug 'mattn/emmet-vim'
" Plug 'dyng/ctrlsf.vim' " Code search and view tool
" Plug 'jlanzarotta/bufexplorer' " BufExplorer quickly and easily switch between buffer
" Plug 'w0rp/ale'
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'tpope/vim-fugitive' " Git wrapper
" Plug 'airblade/vim-gitgutter' " Shows a git diff in the gutter
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'tomtom/tcomment_vim' " Comment stuff out
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-surround'
" Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' } " Undo history visualizer
" Plug 'editorconfig/editorconfig-vim'
" Plug 'SirVer/ultisnips'
" Plug 'epilande/vim-es2015-snippets', { 'for': ['javascript', 'javascript.jsx'] } " ES2015 code snippets
" Plug 'epilande/vim-react-snippets', { 'for': ['javascript', 'javascript.jsx'] } " React code snippets
" Plug 'honza/vim-snippets' " Snippet files for various programming languages
" Plug 'elzr/vim-json'
" Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits
"
"
" " Syntax {{{
" Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'jelera/vim-javascript-syntax', {'for':['javascript', 'javascript.jsx']}
" Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'sheerun/vim-polyglot'
" Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'leafgarland/typescript-vim'
" Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }
" " function! BuildYCM(info)
" "   if a:info.status == 'installed' || a:info.force
" "     !./install.py --clang-completer --gocode-completer
" "   endif
" " endfunction
" " Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp'], 'do': function('BuildYCM') }
"
" Plug 'ternjs/tern_for_vim', {'do': 'npm install', 'for': ['javascript', 'javascript.jsx'] }
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
" " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" " Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" "}}}
"
"
" call plug#end()
