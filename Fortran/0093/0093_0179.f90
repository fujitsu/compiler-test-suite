complex :: cmp(6)
real:: r1(6)=2
cmp=(2,4)
if( any(ERF(cmp%re) .ne. ERF(r1)))print*,"101"
if( any(ERFC(cmp%re) .ne. ERFC(r1)))print*,"102"
print*, "pass"
end
