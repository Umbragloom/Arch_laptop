" Don't try to be vi compatible
set nocompatible

""Plugin Things""

" Helps force plugins to load correctly when it is turned back on below
filetype off

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'joshdick/onedark.vim'
Plug 'cespare/vim-toml'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'miyakogi/conoline.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'severin-lemaignan/vim-minimap'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/calendar.vim'
Plug 'dense-analysis/ale'
Plug 'vim-latex/vim-latex'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'lervag/vimtex'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }


" Initialize plugin system
call plug#end()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"Pick a leader key
let mapleader = "\<Space>"

"""""""""""vim-rainbow"""""""""""""""""""
let g:rainbow_active = 1

"""""""""conolinesettings"""""""""""""
let g:conoline_use_colorscheme_default_normal=1

""""" vim-minimap controls"""""
let g:minimap_show='<leader>ms'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>mc'
let g:minimap_toggle='<leader>mt'

""""""""""" Git keybinds""""""""""""
" Git status
nnoremap  <Leader>gs  :Gstatus<cr>
" Git diff in split window
nnoremap  <Leader>gd  :Gdiffsplit<cr>
" Git commit
nnoremap  <Leader>gc  :Gcommit<cr>
" Git push 
nnoremap  <Leader>gP  :Gpush<cr>
" Git pull 
nnoremap  <Leader>gp  :Gpull<cr>
" Git move 
nnoremap  <Leader>gm  :Gmove<cr>
" Git merge 
nnoremap  <Leader>gM  :Gmerge<cr>
" browse current file on web
nnoremap  <Leader>gb  :Gbrowse<cr>
" browse current line on web
nnoremap  <Leader>gbl  :CocCommand git.browserOpen<cr>
" View chunk information in preview window. 
nnoremap  <Leader>gh  :CocCommand git.chunkInfo<cr>
" View commit information in preview window. 
nnoremap  <Leader>gsc  :CocCommand git.showCommit<cr>
" Toggle git gutter sign columns
nnoremap  <Leader>gg  :CocCommand git.toggleGutters<cr>


" Lazygit
nnoremap <silent> <Leader>lg :call ToggleLazyGit()<CR>

" Turn off YCM
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
" Turn on YCM
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>


"""LaTeX live preview"""
let g:livepreview_engine = 'xelatex'
let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0
map I :! pdflatex %<CR><CR>

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
"filetype plugin indent on

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Security
set modelines=0

" Show line numbers
set number relativenumber

" Show file stats
set ruler

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

""Set font for devicons
set guifont=DroidSansMono\ Nerd\ Font\ 11

" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Whitespace

set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set autoindent
set nofoldenable
set foldmethod=manual
" Pasting
set pastetoggle=<F2>
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
set cursorcolumn

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" set jk to esc
inoremap jk <esc> 
vnoremap jk <esc> 

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"settings for splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

"custom
nnoremap <leader>w :w<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>Q :wq<cr>

"autoclose tags
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2
set noshowmode

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

"Set Spell
set spell

"Folding Things
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

"Make views automatic
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

" Your vimrc
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

"autocmd vimenter * colorscheme gruvbox
colorscheme onedark
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }
" Latex Live Preview
let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0
autocmd Filetype tex setl updatetime=1
