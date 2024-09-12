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
type(x1),target::ty1(3)
 contains
  function fty1() result(r)
    class(x1),pointer,dimension(:)::r
    r=>ty1
  end function
end
subroutine s1
use m3
ty1%ix1=[1,2,3]
cy1=>fty1()
if (cy1(1)%ix1/=1)print *,211
if (cy1(2)%ix1/=2)print *,212
if (cy1(3)%ix1/=3)print *,213
end
call s1
print *,'pass'
end

