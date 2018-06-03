" ==============================
" NVIM CONFIG FILE
" ==============================

" PLUGIN MANAGER
" ==============================
call plug#begin('~/.local/share/nvim/plugged')

" PLUGINS
" =====================
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern'}
Plug 'tweekmonster/deoplete-clang2'

Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'

Plug 'arrufat/vala.vim'

Plug 'mxw/vim-jsx'
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'

Plug 'sjl/tslime.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'

Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'wakatime/vim-wakatime'
Plug 'drewtempelmeyer/palenight.vim'

" Initialize plugin system
call plug#end()


" =====================
" EDITING CONFIGURATION
" =====================
imap <expr><tab>
  \ pumvisible() ? "\<C-n>" :
  \ "\<tab>"

filetype plugin indent on
set encoding=utf8

let maplocalleader = "\\"

" TAB
set tabstop=2
set shiftwidth=2
set expandtab

" Fast File Finder
set path+=**
set wildignore+=*/node_modules/*,*/vendor/*

" Triger `autoread` when files changes on disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None


" =====================
" UI CONFIG
" =====================
set number
set relativenumber

" THEME
syntax enable
set termguicolors
set background=dark
colorscheme palenight
let g:solarized_termcolors=256


" =====================
" PLUGIN CONFIG
" =====================

" DEOPLETE
set completeopt -=preview
let g:deoplete#enable_at_startup = 1

call deoplete#custom#source('clang2', 'min_pattern_length', 4)

" NERDTREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <Leader>f :NERDTreeToggle<Enter>

let NERDTreeMouseMode=2

augroup MouseInNERDTreeOnly
    autocmd!
    autocmd BufEnter NERD_tree_* set mouse=a
    autocmd BufLeave NERD_tree_* set mouse=
augroup END
set mouse=

let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=25

" FZF
nnoremap <c-p> :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>p :History<CR>

" VALA
let g:vala_syntax_folding_enabled = 0

" TSLIME
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_vars_mapping = '<localleader>T'
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'

" AUTOCLOSE HTML
let g:closetag_shortcut = '>'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_close_shortcut = '<leader>>'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.js'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.js"
