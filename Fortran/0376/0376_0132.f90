module m1
 character(1),target::t(2)=(/'1','1'/)
 integer::i2=2
type w
  integer::ps1
  character(:),pointer::pa1(:)
  integer::ps2
end type
contains
subroutine s2(pa,px,py)
type(w)::pa,px(2),py
py%pa1=> pa%pa1

if (len(py%pa1)/=1)call err(3001)
px(2)%pa1=> pa%pa1

if (len(px(i2)%pa1)/=1)call err(1001)
if (any(px(i2)%pa1/='1'))call err(1002)
if (len(pa%pa1)/=1)call err(2001)
if (any(pa%pa1/='1'))call err(2002)
if (.not.associated(pa%pa1,px(i2)%pa1))call err(1003)
if (any(pa%pa1/=px(i2)%pa1))call err(1004)
if (pa%ps1/=100)call err(5004)
if (pa%ps2/=200)call err(5005)
end subroutine
end
use  m1
type(w)::pa,px(2),py
pa%pa1=>t
pa%ps1=100
pa%ps2=200
call s2(pa,px,py)
print *,'pass'
end
subroutine err(i)
print *,'error',i
end

