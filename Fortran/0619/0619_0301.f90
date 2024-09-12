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
 type w1
   integer d1
   class(x1),allocatable,dimension(:)::cy1,cy2,cy3
 end type
end
subroutine s1(n3)
use m3
 type(w1)::v1(n3)
   type(x3)::ty3(n3)
ty3%ix1=[1,2,3]
ty3%ix2=0
ty3%ix3=0
ty3%ix0=0
allocate(v1(2)%cy3,source=ty3)
allocate(v1(2)%cy2,source=v1(2)%cy3)
allocate(v1(2)%cy1,source=v1(2)%cy2)
!
end
call s1(3)
print *,'pass'
end

