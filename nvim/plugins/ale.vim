Plug 'w0rp/ale'

let g:ale_completion_tsserver_autoimport = 1
let g:ale_linters = { 'javascript': ['eslint'], 'ruby': ['rubocop'], 'typescript': ['eslint', 'tsserver'] }
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['typescript'] = ['prettier']
let g:ale_fixers['typescript.tsx'] = ['prettier']
let g:ale_fixers['typescriptreact'] = ['prettier']
let g:ale_fixers['ruby'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_history_log_output = 1
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
