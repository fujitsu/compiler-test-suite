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
 type,extends(x2)::x3
   integer::ix3
 end type
   class(x1),pointer,dimension(:)::cy1
 contains
  subroutine chk3(c1)
   class(x1),dimension(3)::c1
    if (c1(1)%ix1/=1)print *,2201
    if (c1(2)%ix1/=2)print *,2202
    if (c1(3)%ix1/=3)print *,2203
   if (any(c1%ix1/=[1,2,3]))print *,2207
  end subroutine
end
subroutine s1
use m3
type(x1),target::ty1(3)
ty1%ix1=[1,2,3]
cy1=>ty1
    if (cy1(1)%ix1/=1)print *,3201
call chk3(cy1)
end
call s1
print *,'pass'
end

