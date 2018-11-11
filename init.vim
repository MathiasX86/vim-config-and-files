set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" Plugin to make nice start..
Plug 'mhinz/vim-startify'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'bagrat/vim-workspace'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'ap/vim-css-color'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'ryanoasis/vim-devicons'
"Plug 'Shougo/denite.nvim'
Plug 'myusuf3/numbers.vim'
Plug 'Yggdroot/indentLine'
"Plug 'dracula/dracula-theme'
"Plug 'thalesmello/webcomplete.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'rizzatti/dash.vim'
Plug 'vimwiki/vimwiki'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'yuttie/comfortable-motion.vim'
"Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-obsession'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter' 
"Plug 'alvan/vim-closetag'
Plug 'rizzatti/dash.vim'
Plug 'jparise/vim-graphql'
Plug 'pacha/vem-tabline'
Plug 'tpope/vim-fugitive'
Plug 'suan/vim-instant-markdown'
Plug 'samuelsimoes/vim-jsx-utils'
Plug 'othree/csscomplete.vim'
Plug 'tpope/vim-surround'
Plug 'heavenshell/vim-jsdoc'
Plug 'fholgado/minibufexpl.vim'
Plug 'othree/javascript-libraries-syntax.vim'

"========== installation for Language server setuff ==============

"settings for autocompletion
"let g:ale_completion_enabled = 1

"Plug 'w0rp/ale'

"-- keep the sign gutters open at all times --
"let g:ale_sign_column_always = 1
"-- show warnings in the status line --
"let g:airline#extensions#ale#enabled = 1

"========== installation for tagbar =======
"
"** must have universal Ctags installed: brew install ctags 

"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-easytags'
"Plug 'majutsushi/tagbar'

"Plug 'severin-lemaignan/vim-minimap'

"===== installation script for: Deoplete.nvim ======="

"leaving deoplete for now and switching over to YouCompleteMe again"

  "if has('nvim')
    "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "else
    "Plug 'Shougo/deoplete.nvim'
    "Plug 'roxma/nvim-yarp'
    "Plug 'roxma/vim-hug-neovim-rpc'
  "endif
  "let g:deoplete#enable_at_startup = 1

  "==== for snippets ==== "
"  Plug 'Shougo/neosnippet'
"  Plug 'Shougo/neosnippet-snippets' 

  "***start of completion sources***"

  "JavaScript"
"  Plug 'wokalski/autocomplete-flow'
  "TypeScript"
Plug 'HerringtonDarkholme/yats.vim'
  "Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
 Plug 'Quramy/tsuquyomi'
  "Python"
 " Plug 'zchee/deoplete-jedi'

"==== end of deoplete script ===="

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"Plug 'https://tpope.io/vim/projectionist.git'
" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"======= YouCompleteMe sutff ======="
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Commending out FZF for now since I switched over to ctlp
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Initialize plugin system
call plug#end()

"Hightlight the current line"
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

" deoplete tab-complete"
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"setting the colorscheme
set background=dark
set termguicolors
colorscheme monokai_pro
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1
"let g:materialmonokai_custom_lint_indicators=0

set encoding=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='monokai_pro'

"settings for tabs
syntax on
set number
nnoremap <C-p> :<C-u>FZF<CR>

set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab



"hotkey for ctags:tagbar:
nmap <F8> :TagbarToggle<CR>
source ~/.vimrc

"Ignore for CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"*** just some settings for html tag completion ***
"" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"

let g:closetag_close_shortcut = '<leader>>'

"===== allow for css auto completion =====
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

"======= ctrlp settings =======

"only search through current working directory
let g:ctrlp_working_path_mode = 0


"jsx pretty colorful setting
let g:vim_jsx_pretty_colorful_config = 1

"javascript libs syntax highlighting settings
let g:used_javascript_libs = 'react'
