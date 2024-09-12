module m1
 type a
   integer(8)::x1
   character(:),pointer::ps
   character(:),pointer::pa(:,:,:)
   integer(8)::x2
 end type
 character(1),target::t(2,3,4)=reshape((/('1',i=1,23),'2'/),(/2,3,4/))
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
subroutine s2(pa,px,pb,py)
type(w)::pa(:),px(:)
type(w),pointer::pb(:),py(:)
px(i2)%ps1=> pa(i2)%ps1
if (len(px(i2)%ps1)/=1)call err(1001)
if (px(i2)%ps1/='2')call err(1002)
if (len(pa(i2)%ps1)/=1)call err(1001)
if (pa(i2)%ps1/='2')call err(1002)
if (.not.associated(pa(i2)%ps1,px(i2)%ps1))call err(1003)
if (pa(i2)%ps1/=px(i2)%ps1)call err(1004)
px(2)%ps1=> pa(2)%ps1
if (len(px(2)%ps1)/=1)call err(1001)
if (px(2)%ps1/='2')call err(1002)
if (len(pa(2)%ps1)/=1)call err(1001)
if (pa(2)%ps1/='2')call err(1002)
if (.not.associated(pa(2)%ps1,px(i2)%ps1))call err(1003)
if (pa(2)%ps1/=px(2)%ps1)call err(1004)

py(i2)%ps1=> pb(i2)%ps1
if (len(py(i2)%ps1)/=1)call err(1001)
if (py(i2)%ps1/='2')call err(1002)
if (len(pb(i2)%ps1)/=1)call err(1001)
if (pb(i2)%ps1/='2')call err(1002)
if (.not.associated(pb(i2)%ps1,py(i2)%ps1))call err(1003)
if (pb(i2)%ps1/=py(i2)%ps1)call err(1004)
py(2)%ps1=> pb(2)%ps1
if (len(py(2)%ps1)/=1)call err(1001)
if (py(2)%ps1/='2')call err(1002)
if (len(pb(2)%ps1)/=1)call err(1001)
if (pb(2)%ps1/='2')call err(1002)
if (.not.associated(pb(2)%ps1,py(i2)%ps1))call err(1003)
if (pb(2)%ps1/=py(2)%ps1)call err(1004)
end subroutine
end
use  m1
type(w)::pa(2),px(2)
type(w),pointer::pb(:),py(:)
allocate(pb(2),py(2))
pa(2)%ps1=>t(2,3,4)
pb(2)%ps1=>t(2,3,4)
call s2(pa,px,pb,py)
print *,'pass'
end
subroutine err(i)
print *,'error',i
end

