Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'

nmap <leader>tn :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ts :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tv :TestVisit<CR>

" let g:test#preserve_screen = 1
let test#javascript#runner = 'jest'
let test#javascript#jest#executable = 'yarn test'
let test#strategy = "dispatch"
