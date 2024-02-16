complex :: cmp(6)
real:: r1(6)=2
cmp=(2,4)
if(any(floor(cmp%re) .ne. floor(r1)))print*,"101"
if(any(fraction(cmp%re) .ne. fraction(r1)))print*,"102"
if(any(gamma(cmp%re) .ne. gamma(r1)))print*,"103"
if(huge(cmp%re) .ne. huge(r1))print*,"104"
if(any(hypot(cmp%re,cmp%im) .ne. hypot(r1,cmp%im)))print*,"104"
if(log(cmp(1)%re) .ne. log(r1(1)))print*,"105"
if(log10(cmp(1)%re) .ne. log10(r1(1)))print*,"106"
print*, "pass"
end
