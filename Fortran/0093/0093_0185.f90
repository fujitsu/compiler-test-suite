complex :: cmp1(2)
real :: r1(2)=(2)
cmp1=(2,4)
if(PRECISION(cmp1%re) .ne. PRECISION(r1))print*,"101"
if(RADIX(cmp1%re) .ne. RADIX(r1))print*,"102"
if(RANGE(cmp1%re) .ne. RANGE(r1))print*,"103"
if(any(REAL(cmp1%re) .ne. REAL(r1)))print*,"104"
if(any(RRSPACING(cmp1%re) .ne. RRSPACING(r1)))print*,"105"
if(any(SCALE(cmp1%re,int(cmp1%im)) .ne. SCALE(r1,4)))print*,"106"
print*, "pass"
end
