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
   class(x1),pointer::cy1(:)
 contains
  subroutine chk(c1)
   class(x1)::c1(2)
   if (c1(1)%ix1/=2)print *,101
   if (c1(2)%ix1/=5)print *,102
   if (any(c1%ix1/=reshape([2,5],[2])))print *,201
  end subroutine
end
subroutine s1
use m3
type(x2),target::ty2(3,2)
ty2%ix1=reshape([1,2,3,4,5,6],[3,2])
cy1=>ty2(2,:)
if (cy1(1)%ix1/=2)print *,212
if (cy1(2)%ix1/=5)print *,215
call chk(cy1)
end
call s1
print *,'pass'
end

