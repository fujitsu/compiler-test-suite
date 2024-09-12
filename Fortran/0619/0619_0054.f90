module m1
 type x1
   integer::ix0
   integer::ix1
 end type
   class(x1),allocatable,dimension(:)::cy1
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
 contains
  subroutine chk3(c1)
   class(x1),dimension(3)::c1
   call chk2(c1)
  end subroutine
  subroutine chk2(c1)
   class(x1),dimension(3)::c1
  end subroutine
end
subroutine s1
use m3
type(x2)::ty2(3)
ty2%ix1=[1,2,3]
ty2%ix2=0
ty2%ix0=0

allocate(cy1(3),source=ty2)
call chk3(cy1)
end
call s1
print *,'pass'
end

