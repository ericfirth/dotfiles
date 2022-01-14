"-------------------------------------------------------------------------
" General
" ------------------------------------------------------------------------

let mapleader = "\<Space>"
set nocompatible
set termguicolors
syntax enable
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab
set splitbelow
set splitright
set list
set listchars=tab:▸\ ,trail:·
set clipboard=unnamedplus
set backup
set backupdir=~/.local/share/nvim/backup//
set signcolumn=yes:2
set mouse=a
set hidden

" ------------------------------------------------------------------------
" Key Maps
" ------------------------------------------------------------------------

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vs :source ~/.config/nvim/init.vim<cr>
nmap <leader>vc :vsplit ~/.vimrc<cr>
nmap <leader>s :w<cr>
nmap <leader>S :w<cr>:Gwrite<cr>
map gf :edit <cfile><cr>
imap jj <esc>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nmap <cr> o<esc>k
nmap j gj
nmap k gk



" ------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/ale.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/lsp.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/endwise.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/floaterm.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/kitty.vim
source ~/.config/nvim/plugins/lastplace.vim
source ~/.config/nvim/plugins/markdown_preview.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/projectionist.vim
source ~/.config/nvim/plugins/quick_scope.vim
source ~/.config/nvim/plugins/sort_motion.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/test.vim
source ~/.config/nvim/plugins/ultisnips.vim
source ~/.config/nvim/plugins/unimpaired.vim
source ~/.config/nvim/plugins/which_key.vim

call plug#end()
doautocmd User PlugLoaded
