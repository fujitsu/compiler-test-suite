module m1
 type y
   integer,allocatable::y1(:)
   integer            ::y2(2)
   integer,pointer    ::y3(:)
 end type
 type x
   type(y),pointer    ::x13(:)
   integer,pointer    ::x3(:)
 end type
 type(x),allocatable:: a1(:)
 type(x)            :: a2(2)
 type(x),pointer    :: a3(:)
end
module m2
use m1,only:b1=>a1,b2=>a2,b3=>a3
end
subroutine s1
use m1
use m2

b1(1)%x3(1)=a1(1)%x3(1)+1


end
print *,'pass'
end
