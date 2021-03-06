set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'itspriddle/vim-shellcheck'
Plug 'vimwiki/vimwiki'
Plug 'pearofducks/ansible-vim'
Plug 'groenewege/vim-less'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'msanders/snipmate.vim'
Plug 'scrooloose/nerdtree'
Plug 'tfentonz/vim-magiq'
Plug 'tpope/vim-rails'
Plug 'junegunn/vim-plug'
" Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

call plug#end()

" Security
set modelines=0

" Tabs/spaces
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab

" Basic options
set encoding=utf-8
set scrolloff=3
set autoindent
set noshowmode
set showcmd
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2 " always

" Leader
let mapleader = ","

" Searching
set ignorecase
set smartcase
set showmatch
set hlsearch
map <leader><space> :noh<cr>
nmap <tab> %
vmap <tab> %

" Use the same symbols as TextMate for tabstops and EOLs
set nolist
set listchars=tab:▸\ ,eol:¬

" Color scheme (Terminal)
syntax on
set background=dark
colorscheme molokai

" Don't give the intro message when starting Vim
set shortmess+=I

" set guifont to be bigger
set guifont=Menlo\ Regular:h16

"set mouse scroll
"set mouse=a
"set clipbord to be used elsewhere
set clipboard=unnamed

" NERD Tree
map <F2> :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\~$', '.OB$', '.gz$', '.vim$']
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 0

" Various syntax stuff
let cobol_legacy_code = 1
au BufNewFile,BufRead *.C    set filetype=cobol
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.rake set filetype=ruby
au BufNewFile,BufRead *.sql  set filetype=mysql
au BufNewFile,BufRead *.axlsx  set filetype=ruby

" Highlight trailing whitespace
match ErrorMsg '\s\+$'

" remove trailing whitespaces
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Toggle unprintable characters
map <leader>l :set list!<cr>

" Toggle line numbers
map <leader>n :set number!<cr>

" Toggle paste mode
map <leader>p :set paste!<cr>

" Remove object
map <leader>o :!rm -f %.OB<cr>

" Clean whitespace
map <leader>w :%s/\s\+$//<cr>:let @/=''<cr>

" change ruby hash 1.8x to 1.9x
map <leader>crh :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<cr>

" CtrlP
let g:ctrlp_custom_ignore = { 'dir': 'db/sphinx\|node_module\|vendor/cache' }
let g:ctrlp_working_path_mode = 'a'

" Syntastic
map <leader>j :SyntasticToggleMode<cr>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Ruby on Rails
let rails_menu = 2
map <leader>m :Rmodel<cr>
map <leader>v :Rview<space>
map <leader>c :Rcontroller<cr>
map <leader>h :Rhelper<cr>
map <leader>e :Renvironment<cr>
map <leader>vf :Rview _form<cr>
map <leader>ve :Rview edit<cr>
map <leader>vi :Rview index<cr>
map <leader>vn :Rview new<cr>
map <leader>vs :Rview show<cr>

" Edit vimrc
nmap <leader>ev <C-w>s<C-w>j<C-w>L:e $MYVIMRC<cr>

" Change comment to greem
:highlight Comment ctermfg=green
