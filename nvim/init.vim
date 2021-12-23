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
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/sort_motion.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/test.vim
source ~/.config/nvim/plugins/ultisnips.vim

call plug#end()
doautocmd User PlugLoaded

" call minpac#add('tpope/vim-unimpaired')
" call minpac#add('tpope/vim-repeat')
" call minpac#add('tpope/vim-sensible')
" call minpac#add('tpope/vim-abolish')
" call minpac#add('tpope/vim-endwise')
" call minpac#add('tpope/vim-speeddating')
" call minpac#add('tpope/vim-obsession')
" call minpac#add('ervandew/supertab')


" call minpac#add('prabirshrestha/vim-lsp')
" call minpac#add('mattn/vim-lsp-settings')
" call minpac#add('prabirshrestha/asyncomplete.vim')
" call minpac#add('prabirshrestha/asyncomplete-lsp.vim')

" map <leader>i mmgg=G`m
" nmap <leader>so :source $MYVIMRC<cr>
" nmap <leader>gs :Gstatus<cr>
" nmap 0 ^



" if executable('pyls')
"     " pip install python-language-server
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'allowlist': ['python'],
"         \ })
" endif

" function! s:on_lsp_buffer_enabled() abort
"     setlocal omnifunc=lsp#complete
"     setlocal signcolumn=yes
"     if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"     nmap <buffer> gd <plug>(lsp-definition)
"     nmap <buffer> gs <plug>(lsp-document-symbol-search)
"     nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"     nmap <buffer> gr <plug>(lsp-references)
"     nmap <buffer> gi <plug>(lsp-implementation)
"     nmap <buffer> gt <plug>(lsp-type-definition)
"     nmap <buffer> <leader>rn <plug>(lsp-rename)
"     nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"     nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"     nmap <buffer> K <plug>(lsp-hover)
"     inoremap <buffer> <expr><c-f> lsp#scroll(+4)
"     inoremap <buffer> <expr><c-d> lsp#scroll(-4)

"     let g:lsp_format_sync_timeout = 1000
"     autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
"     " refer to doc to add more commands
" endfunction

" augroup lsp_install
"     au!
"     " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"     autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
" augroup END

" let g:asyncomplete_auto_popup = 0

" let NERDTreeShowHidden=1
