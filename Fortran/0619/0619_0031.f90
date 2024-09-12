module m1
 type x1
   integer::ix0
   integer::ix1
 end type
end
module m2
use m1
 type,extends(x1)::x2
   integer::ix2
 end type
end
module m3
 use m2
 type  y1
   integer::iy1
   class(x1),pointer::cy1(:,:)
 end type
 type (y1):: v1(2)
 type (y1),pointer:: v2(:)
 contains
  subroutine chk(c)
   class(x1)::c(2,3)
   if (c(1,1)%ix1/=1)print *,101
   if (c(2,1)%ix1/=2)print *,102
   if (c(1,2)%ix1/=3)print *,103
   if (c(2,2)%ix1/=4)print *,121
   if (c(1,3)%ix1/=5)print *,122
   if (c(2,3)%ix1/=6)print *,123
   if (any(c%ix1/=reshape([1,2,3,4,5,6],[2,3])))print *,201
  end subroutine
end
subroutine s1
use m3
type(x2),target::ty2(3,2)
ty2%ix1=reshape([1,2,3,4,5,6],[3,2])
allocate(v2(2))
v2(2)%cy1=>ty2
if (v2(2)%cy1(1,1)%ix1/=1)print *,211
if (v2(2)%cy1(2,1)%ix1/=2)print *,212
if (v2(2)%cy1(3,1)%ix1/=3)print *,213
if (v2(2)%cy1(1,2)%ix1/=4)print *,214
if (v2(2)%cy1(2,2)%ix1/=5)print *,215
if (v2(2)%cy1(3,2)%ix1/=6)print *,216
call chk(v2(2)%cy1)
end
call s1
print *,'pass'
end

