
complex,parameter :: cmp1(2)=(2,4)
real :: r1(2)=(2)
real :: r2(2)=(4)

if(any(SPREAD(cmp1%re,2,1) .ne. SPREAD(r1,2,1)))print*,"101"
if(STORAGE_SIZE(cmp1%re) .ne. STORAGE_SIZE(r1))print*,"102"
if(SUM(cmp1%re) .ne. SUM(r1))print*,"103"
if(TINY(cmp1%re) .ne. TINY(r1))print*,"104"
if(any(TRAILZ(int(cmp1%re)) .ne. TRAILZ(int(r1))))print*,"105"
if(any(TRANSFER(cmp1%re,cmp1%im) .ne. TRANSFER(r1,r2)))print*,"106"
print*, "pass"
end
