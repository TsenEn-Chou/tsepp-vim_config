" ---------------------------------------------------------- 快捷鍵 -----------------------------------------------------

" i = 插入模式執行, n = 普通模式執行 m =任何模式都可執行
" nore 代表遞歸，意味著映射關係是否可以延續
" <xxx> xxx 表示為鍵盤鍵, <CR> = Enter, <Shift-x> = Shift + x 組合鍵
inoremap ;; <ESC>

" 執行 python
nmap <F5> :call CompileRun()<CR>
func! CompileRun()
        exec "w"
if &filetype == 'python'
            exec "!time python3 %"
elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
elseif &filetype == 'sh'
            :!time bash %
endif
    endfunc

nnoremap <F4> <C-W>
