module m1
 type a
   integer(8)::x1
   character(:),pointer::ps
   character(:),pointer::pa(:,:,:)
   integer(8)::x2
 end type
 character(1),target::t(2,3,4)=reshape((/('1',i=1,23),'1'/),(/2,3,4/))
 integer::i2=2
type w
  character(:),pointer::ps2,pa2(:,:,:)
  type(a)::vs1,va1(2)
  type(a),pointer::vs2,va2(:)
  type(a)::vs3,va3(2)
  character(:),pointer::ps1,pa1(:,:,:)
  type(a),pointer::vs4,va4(:)
end type
contains
subroutine s2(pa,px)
type(w)::pa(:),px(:)
px(i2)%pa1=> pa(i2)%pa1
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

