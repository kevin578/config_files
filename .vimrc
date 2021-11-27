call plug#begin('~/.vim/plugged')

Plug 'yuttie/comfortable-motion.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'jesseleite/vim-agriculture'
Plug 'wting/gitsessions.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-rails'
Plug 'reedes/vim-pencil'
Plug 'junegunn/vim-peekaboo'
Plug 'mattn/emmet-vim'


call plug#end()

syntax on
set showcmd
set showmatch
set number 
set termguicolors
set wildmenu
set shortmess-=S
set shiftwidth=2
set autoindent
set smartindent
set wildmode=list:longest
set updatetime=100
set incsearch
set ignorecase
set smartcase

" set modifiable "Allow nerdtree to be able to modify
let NERDTreeShowHidden=1
let g:vim_jsx_pretty_colorful_config = 1 " default 0
" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 "

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

let g:pencil#wrapModeDefault = 'soft'
let g:fzf_layout = { 'window': "execute 'botright' float2nr(ceil(0.3 * &lines)) 'new'" }

nnoremap <SPACE> <Nop>
let mapleader=" " "set space bar as leader

nnoremap <Leader>p :Files <CR>
nnoremap <Leader>p :Files <CR>
inoremap jk <esc>
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>
nnoremap ]b :bnext<CR>
nnoremap [b :bprevious<CR>
nnoremap ]t :tabnext<CR>
nnoremap [t :tabprevious<CR>

" nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>y "*y
vnoremap <Leader>y "*y
nnoremap <Leader>v "*p
nnoremap <Leader>w <C-w>
nnoremap <Leader>f /
nnoremap <Leader>F ?
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>e :Explore <CR>
nnoremap <Leader>p :Files <CR>
nnoremap <Leader>df :Rg<Space>
nnoremap <leader>o :History<CR>
nnoremap <Leader>gb :Git blame <CR>

"Nerdtree mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set termguicolors     " enable true colors support
set background=light
" colorscheme PaperColor
" let g:airline_theme = "cobalt2"
let g:airline_theme = "solarized"
color pencil

" Intellisense config -->
"
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
