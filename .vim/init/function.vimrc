" RUN PYTHON
" 按 F5 执行当前 Python 代码"
map <F5> :call PRUN()<CR>
func! PRUN()
    exec "w" 
    if &filetype == 'python'
        exec "!python %"
    endif
endfunc

