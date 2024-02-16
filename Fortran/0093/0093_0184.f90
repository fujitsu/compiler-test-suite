complex :: cmp1(2)
logical :: mask=.true.
real :: r1(2)=(2)
cmp1=2
if(any(PACK(cmp1%re,mask) .ne. PACK(r1,mask)))print*,"101"
print*, "pass"
end
