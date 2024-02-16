complex :: cmp
call sub(cmp)

contains        
subroutine sub(cmp1)
complex :: cmp1
cmp1%re = 5.6
cmp1%im = 7.7
if(SIZEOF(cmp1%re) .ne. 4) print*,101
if(SIZEOF(cmp1%im) .ne. 4) print*,102
if(cmp1%re .ne. 5.6) print*,103
if(cmp1%im .ne. 7.7) print*,104
PRINT*,"PASS"
end subroutine
end
