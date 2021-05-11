" let g:ale_completion_enabled = 1

source ~/.vim/init/plug.vimrc " plugin loader
source ~/.vim/init/plugins.vimrc " plugin settings
source ~/.vim/init/general.vimrc " plugin settings
source ~/.vim/init/function.vimrc " Custom function

" set completeopt=menu,menuone,popup,noselect,noinsert,preview
" let asdfasdf = system('pipenv --venv') .'/bin/python'
" let venv_path = substitute(pipenv_venv_path, '\n', '', '')
" let ssssss = venv_path . '/bin/python'
" let g:jedi#environment_path = asdfasdf
"
" let g:lsp_diagnostics_enabled = 1
" let g:lsp_diagnostics_echo_cursor=1
" let g:lsp_settings_filetype_python = ['pyls',  'pyls-ms', 'pyls-all', 'pyright-langserver', 'jedi-language-server']"
" let g:lsp_settings_filetype_python = ['pyls-ms']
" jump to last cursor position while reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    inoremap <buffer> <expr><c-f> lsp#scroll(+4)
    inoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
