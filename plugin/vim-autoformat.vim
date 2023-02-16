" autoformat
nnoremap <F6> :Autoformat<CR>
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0


let g:formatdef_my_custom_c = '"astyle --mode=c --style=google"'
"let g:formatdef_my_custom_c = '"astyle --mode=c --style=google --suffix=none *.[ch]"'
let g:formatters_c = ['my_custom_c']
let g:formatdef_my_custom_py = '"astyle --mode=py --style=google"'
let g:formatters_py = ['my_custom_py']
" nnoremap <F7> :call FormatCode()<CR>
"  func! FormatCode()
"        exec "w"
"        if &filetype == 'C' || &filetype == 'h'
"           exec "!astyle --style=google %"
"        elseif &filetype == 'cpp'
"           exec "!astyle --style=google %"
"        return
"        endif
"  endfunc

