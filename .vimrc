call plug#begin('~/.vim/plugged')

Plug 'yuttie/comfortable-motion.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'jesseleite/vim-agriculture'
Plug 'tpope/vim-rails'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
call plug#end()

syntax on
set showcmd
set showmatch
" set number relativenumber 
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

" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 "
let g:indent_guides_enable_on_vim_startup = 1
" use blinky line in insert mode
au InsertEnter * silent execute "!echo -en \<esc>[5 q"
au InsertLeave * silent execute "!echo -en \<esc>[2 q"

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
set foldmethod=syntax
set nofoldenable

nnoremap <SPACE> <Nop>
let mapleader=" " "set space bar as leader

"cycle through autocomplete with tab
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

nnoremap <Leader>p :Files <CR>
nnoremap <Leader>p :Files <CR>
inoremap jk <esc>:w<CR>
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>
nnoremap ]b :bnext<CR>
nnoremap [b :bprevious<CR>
nnoremap ]t :tabnext<CR>
nnoremap [t :tabprevious<CR>

nnoremap <Leader>y "*y
vnoremap <Leader>y "*y
nnoremap <Leader>v "*p
nnoremap <Leader>w <C-w>
" nnoremap <Leader>f /
" nnoremap <Leader>F ?
nnoremap <Leader>b :Buffers<CR>
" nnoremap <Leader>b :ls<CR>:b<Space> 
nnoremap <Leader>e :Explore <CR>
nnoremap <Leader>p :Files <CR>
nnoremap <Leader>df :Rg<Space>
" nnoremap <Leader>df :grep -RF<Space>
nnoremap <leader>o :History<CR>
nnoremap <Leader>gb :Git blame <CR>
nnoremap <Leader>co :copen <CR>
nnoremap <Leader>cc :cclose<CR>

set termguicolors     " enable true colors support
set background=light
" colorscheme PaperColor
" let g:airline_theme = "cobalt2"
let g:airline_theme = "solarized"
color pencil

" Use tab for trigger completion with characters ahead and navigate in coc.vim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" For Prose Mode - explaination: https://old.reddit.com/r/vim/comments/q03mqa/my_setup_for_prose/

let w:ProseModeOn = 0

function EnableProseMode()
    setlocal spell spelllang=en_us
    Goyo 66
    SoftPencil
    echo "Prose Mode On"
endfu

function DisableProseMode()
    Goyo!
    NoPencil
    setlocal nospell
    echo "Prose Mode Off"
endfu

function ToggleProseMode()
    if w:ProseModeOn == 0
        call EnableProseMode()
        let w:ProseModeOn = 1
    else
        call DisableProseMode()
    endif
endfu

command Prose call EnableProseMode()
command UnProse call DisableProseMode()
command ToggleProse call ToggleProseMode()


