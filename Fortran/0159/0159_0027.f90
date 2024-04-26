module my
 type y
   integer,allocatable::y1(:)
   integer            ::y2(2)
   integer,allocatable::y3(:)
 end type
end
module my2
use my,only:ww=>y
end
module m11
use my
use my2
 type x
   integer            ::x2(2)
 end type
end
module m111
 use m11,only:z=>x
end
module m1
 use m111
 use m11
 type(x),allocatable:: a1(:)
 type(x)            :: a2(2)
 type(x),allocatable:: a3(:)
 type(z),allocatable:: d1(:)
 type(z)            :: d2(2)
 type(z),allocatable:: d3(:)
contains
subroutine alc
end subroutine
end
module m2
use m1,only:b1=>a1,b2=>a2,b3=>a3,e1=>d1,e2=>d2,e3=>d3
end
module m3
use m2,only:c1=>b1,c2=>b2,c3=>b3
end
module m4
use m1,only:f1=>d1,f2=>d2,f3=>d3
end
module m5
use m4,only:g1=>f1,g2=>f2,g3=>f3
end
subroutine s1(k1,k2)
use m1
use m2
use m3
use m4
use m5
call alc
end
call s1(1,5)
print *,'pass'
end
