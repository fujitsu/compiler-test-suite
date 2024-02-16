complex :: cmp(2)
real :: r1(2)
real :: r2(2)
logical :: mask=.true.
r1(1)=2
r1(2)=5
r2(1)=2
r2(2)=6
cmp(1)=(2,4)
cmp(2)=(5,6)
if(max(cmp(1)%re,cmp(1)%im) .ne. max(2,4))print*,"101"
if(maxexponent(cmp(1)%re) .ne. maxexponent(r1(1)))print*,"102"
if(maxval(cmp%re) .ne. maxval(r1))print*,"103"
if(any(merge(cmp%re,cmp%im,mask) .ne. merge(r1,r2,mask)))print*,"104"
if(mod(cmp(1)%re,cmp(2)%im) .ne. mod(2,6))print*,"105"
if(modulo(cmp(1)%re,cmp(2)%im) .ne. modulo(2,6))print*,"106"
if(nearest(cmp(1)%re,cmp(2)%im) .ne. nearest(2.0,6.0))print*,"107"
print*, "pass"
end
