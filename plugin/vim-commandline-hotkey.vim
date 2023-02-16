" ---------------------------------------------------------- 命令行指令 -----------------------------------------------------
" JSON 文字格式化
command! JSONFormat :execute '%!python -m json.tool'
\ | :execute '%!python -c "import re,sys;chr=__builtins__.__dict__.get(\"unichr\", chr);sys.stdout.write(re.sub(r\"\\\\u[0-9a-f]{4}\", lambda x: chr(int(\"0x\" + x.group(0)[2:], 16)).encode(\"utf-8\"), sys.stdin.read()))"'
\ | :set ft=javascript
\ | :1

" XML 文字格式化
command! XMLFormat :execute '%!xmllint --format -'

" 常用的文字替代
command! Br2line :execute '%s/<br>/---/g'
" xml 文字的格式化排版
command! XMLFormat :execute '%!xmllint --format -'
" 執行常用的文字替代
command! Br2line :execute '%s/<br>/---/g'

