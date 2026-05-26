" ============================================================
" VIM CONFIG (MODERN + MINIMAL + MAINTAINABLE)
" Location: ~/.vimrc
" ============================================================

" ============================================================
" 1. CORE SETTINGS
" ============================================================
syntax on                      " Enable code syntax highlighting
filetype plugin indent on      " Detect file type, load specific plugins and indentation

set number                     " Show current line number
set relativenumber             " Show relative line numbers for easy jumping (hybrid mode)
set scrolloff=8                " Keep 8 lines visible above/below cursor when scrolling
set mouse=a                    " Enable mouse support for clicking, scrolling, and resizing

" Indentation (4-space standard, adaptable)
set tabstop=4                  " Number of visual spaces per TAB
set shiftwidth=4               " Number of spaces used for autoindenting
set expandtab                  " Convert TABs to spaces
set smartindent                " Insert indents automatically depending on code syntax

set clipboard=unnamedplus      " Link Vim clipboard to system clipboard (requires +clipboard)
set backspace=indent,eol,start " Make backspace work normally over indents, line breaks, and insert start
set updatetime=300             " Faster diagnostic messages and git gutter updates (default 4000ms)
set noswapfile                 " Disable recovery .swp files (prevents annoying prompts)

" ============================================================
" 2. SEARCH SETTINGS
" ============================================================
set incsearch                  " Highlight search matches on-the-fly while typing
set hlsearch                   " Highlight all matches of the last searched term
set ignorecase                 " Make searching case-insensitive...
set smartcase                  " ...unless the search query contains an uppercase letter

" ============================================================
" 3. LEADER KEY
" ============================================================
let mapleader=" "              " Set the Spacebar as the main shortcut prefix key

" ============================================================
" 4. INSERT MODE IMPROVEMENTS
" ============================================================
inoremap jk <Esc>              " Type 'jk' quickly to exit Insert mode
inoremap kj <Esc>              " Type 'kj' quickly to exit Insert mode

" ============================================================
" 4b. DYNAMIC CURSOR SHAPE (Modern Standard)
" ============================================================
" Automatically switch between Block and Line cursor based on the mode
if &term =~ 'xterm\|vte\|screen\|tmux\|alacritty\|kitty\|iterm'
    " Use a solid BLOCK cursor when exiting Insert mode (Normal, Visual, etc.)
    let &t_EI = "\e[2 q"
    
    " Use a thin LINE (I-Beam) cursor when entering Insert mode
    let &t_SI = "\e[6 q"
    
    " Use an UNDERLINE cursor when entering Replace mode (optional, type 'R')
    let &t_SR = "\e[4 q"
    
    " Reset cursor back to a block when completely exiting Vim
    au VimLeave * set t_EI=[2 q
endif

" ============================================================
" 5. NORMAL MODE REMAPS
" ============================================================
nnoremap Q <nop>               " Disable accidental triggers of the annoying 'Ex mode'
nnoremap <Esc> :nohlsearch<CR> " Press Esc to clear search highlights on the screen

" Keep cursor vertically centered on screen while jumping through search results
nnoremap n nzzzv
nnoremap N Nzzzv

" Quick navigation to start and end of lines (H and L are much easier than ^ and $)
nnoremap H ^
nnoremap L $

" ============================================================
" 6. WINDOW NAVIGATION & SPLITS
" ============================================================
" Use Space + h/j/k/l to jump between split windows
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Quick split creation
nnoremap <leader>sh :split<CR>   " Space + s + h splits window horizontally
nnoremap <leader>sv :vsplit<CR>  " Space + s + v splits window vertically

" ============================================================
" 7. FILE OPERATIONS
" ============================================================
nnoremap <leader>w :w<CR>      " Space + w saves the current file
nnoremap <leader>q :q<CR>      " Space + q quits Vim (if changes are saved)
nnoremap <leader>x :x<CR>      " Space + x saves and quits

" FIXED: Changed shortcut so it doesn't conflict with vertical split
nnoremap <leader>rc :source ~/.vimrc<CR> " Space + r + c reloads this config instantly

" ============================================================
" 8. TOGGLES (QUALITY OF LIFE)
" ============================================================
nnoremap <leader>n :set relativenumber!<CR> " Space + n toggles hybrid line numbers on/off
nnoremap <leader>hls :set hlsearch!<CR>     " Space + h + l + s toggles search highlighting entirely

" ============================================================
" 9. VISUAL MODE / EDITING PRODUCTIVITY
" ============================================================
" Paste over selected text without losing the text you originally copied
vnoremap p "_dP

" Move visually highlighted blocks of code up or down dynamically
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Reselect visual block after indenting so you can press < or > multiple times
vnoremap < <gv
vnoremap > >gv

" ============================================================
" 10. COLORS & UI
" ============================================================

set termguicolors              " Enable 24-bit RGB true color support
set cursorline                 " Highlight the line the cursor is currently on

" Set the variant (options: rose-pine, rose-pine-moon, rose-pine-dawn)
let g:rose_pine_variant = 'main'

" Safely try to apply rose-pine; fallback to desert if not installed yet
silent! colorscheme rose-pine
if !exists('g:colors_name') || g:colors_name != 'rose-pine'
    colorscheme desert
endif
