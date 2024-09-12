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
 class(x1),allocatable,dimension(:)::dy1,dy2,dy3
 type (x1),allocatable,dimension(:)::ey1
 type (x2),allocatable,dimension(:)::ey2
 type (x3),allocatable,dimension(:)::ey3
end
subroutine s1
use m3
   type(x3)::ty3(3)
ty3%ix1=[1,2,3]
ty3%ix2=0
ty3%ix3=0
ty3%ix0=0
allocate(dy3,source=ty3)
allocate(dy2,source=dy3)
allocate(dy1,source=dy2)
!
end
subroutine s0
use m3
   type(x3)::ty3(3)
ty3%ix1=[1,2,3]
ty3%ix2=0
ty3%ix3=0
ty3%ix0=0
allocate(ey3,source=ty3)
allocate(ey2,source=ty3%x2)
allocate(ey1,source=ty3%x1)
!
end
call s0
call s1
print *,'pass'
end

