" ==============================
" NVIM CONFIG FILE
" ==============================

" PLUGIN MANAGER
" ==============================
call plug#begin('~/.local/share/nvim/plugged')

" PLUGINS
" =====================
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tweekmonster/deoplete-clang2'
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern'}

Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'mxw/vim-jsx'

Plug 'christoomey/vim-tmux-navigator'
Plug 'sjl/tslime.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/goyo.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'

Plug 'drewtempelmeyer/palenight.vim'
Plug 'wakatime/vim-wakatime'

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
set background=dark
colorscheme palenight
let g:solarized_termcolors=256
set termguicolors


" DEOPLETE
let g:deoplete#enable_at_startup = 1
set completeopt -=preview

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
nnoremap <leader>p :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <c-p> :Files<CR>

" TSLIME
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'
let g:tslime_vars_mapping = '<localleader>T'

" AUTOCLOSE HTML
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.js"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.js'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

