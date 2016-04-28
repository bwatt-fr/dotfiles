setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
