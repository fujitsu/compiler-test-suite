complex :: cmp1(2)
real :: r1(2)=(2)
cmp1=(2,4)
if(PRECISION(cmp1%re) .ne. PRECISION(r1))print*,"101"
if(RADIX(cmp1%re) .ne. RADIX(r1))print*,"102"
if(RANGE(cmp1%re) .ne. RANGE(r1))print*,"103"
if(any(REAL(cmp1%re) .ne. REAL(r1)))print*,"104"
if(any(RRSPACING(cmp1%re) .ne. RRSPACING(r1)))print*,"105"
if(any(SCALE(cmp1%re,int(cmp1%im)) .ne. SCALE(r1,4)))print*,"106"
if(SET_EXPONENT(cmp1(1)%re,int(cmp1(1)%im)) .ne. SET_EXPONENT(2.0,4))print*,"107"
if(any(SHAPE(cmp1%re) .ne. SHAPE(r1)))print*,"108"
if(any(SQRT(cmp1%re) .ne. SQRT(r1)))print*,"109"
if(SIZE(cmp1%re) .ne. SIZE(r1))print*,"110"
if(any(SPACING(cmp1%re) .ne. SPACING(r1)))print*,"111"
print*, "pass"
end
