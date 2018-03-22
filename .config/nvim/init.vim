" ==============================
" PLUGIN MANAGER
" ==============================
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" PLUGINS
" =====================
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tweekmonster/deoplete-clang2', {'for': ['c++', 'c']}
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': 'javascript' }

Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx', {'for': 'javascript'}

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

" Configure TAB
set tabstop=2
set shiftwidth=2
set expandtab

" Configure Fast File Finder
set path+=**
set wildignore+=*/node_modules/*,*/vendor/*

" =====================
" UI CONFIG
" =====================
set number
set relativenumber

" THEME
" =====================
syntax enable
set background=dark
let g:solarized_termcolors=256
set termguicolors
colorscheme palenight


" DEOPLETE
" =====================
let g:deoplete#enable_at_startup = 1
set completeopt -=preview

call deoplete#custom#source('clang2', 'min_pattern_length', 4)

" NERDTREE
" =====================
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <Leader>f :NERDTreeToggle<Enter>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize=25

" FZF
" =====================
nnoremap <leader>p :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <c-p> :Files<CR>

" TSLIME
" =====================
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'
let g:tslime_vars_mapping = '<localleader>T'

" EMMET
" ====================
let g:user_emmet_leader_key='<C-e>'
imap <expr> <C-e> emmet#expandAbbrIntelligent("\<C-e>")

