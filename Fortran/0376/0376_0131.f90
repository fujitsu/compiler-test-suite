module m1
 character(1),target::t(2)=(/'1','1'/)
 integer::i2=2
type w
  integer::ps1
  character(:),pointer::pa1(:)
end type
contains
subroutine s2(pa,px)
type(w)::pa(:),px(:)
px(2)%pa1=> pa(2)%pa1

if (len(px(i2)%pa1)/=1)call err(1001)
if (any(px(i2)%pa1/='1'))call err(1002)
if (len(pa(i2)%pa1)/=1)call err(2001)
if (any(pa(i2)%pa1/='1'))call err(2002)
if (.not.associated(pa(i2)%pa1,px(i2)%pa1))call err(1003)
if (any(pa(i2)%pa1/=px(i2)%pa1))call err(1004)
end subroutine
end
use  m1
type(w)::pa(2),px(2)
pa(2)%pa1=>t
call s2(pa,px)
print *,'pass'
end
subroutine err(i)
print *,'error',i
end

