complex,parameter :: cmp = (2.56,3.56)
call sub(cmp)


contains        
subroutine sub(cmp1)
complex,INTENT(IN) :: cmp1
real :: rr,ii
rr =  cmp1%re
ii =  cmp1%im
if(SIZEOF(cmp1%re) .ne. 4) print*,101
if(SIZEOF(cmp1%im) .ne. 4) print*,102
if(cmp1%re .ne. 2.56) print*,103
if(cmp1%im .ne. 3.56) print*,104
if(rr .ne. 2.56) print*,105
if(ii .ne. 3.56) print*,106
PRINT*,"PASS"
end subroutine

end
