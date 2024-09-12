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
    type y
      integer::y1
      class(x1),pointer,dimension(:)::dy1
    end type
    type(y)::v(2)
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
call chk3(cy1)
v(2)%dy1=>cy1
if (v(2)%dy1(1)%ix1/=1)print *,511
if (v(2)%dy1(2)%ix1/=2)print *,512
if (v(2)%dy1(3)%ix1/=3)print *,513
call chk3(v(2)%dy1)
end
call s1
print *,'pass'
end

