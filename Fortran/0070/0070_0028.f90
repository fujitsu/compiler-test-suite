module m1
 type x
   integer,allocatable::x1(:)
   integer            ::x2(2)
   integer,pointer    ::x3(:)
 end type
 type(x),allocatable:: a1(:)
 type(x)            :: a2(2)
 type(x),pointer    :: a3(:)
contains
subroutine alc
allocate(a1(1))
allocate(a1(1)%x1(2))
allocate(a1(1)%x3(2))
allocate(a2(1)%x1(2))
allocate(a2(1)%x3(2))
allocate(a3(1))
allocate(a3(1)%x1(2))
allocate(a3(1)%x3(2))
end subroutine
end
module m2
use m1,only:b1=>a1,b2=>a2,b3=>a3
end
subroutine s1
use m1
use m2
call alc
a1(1)%x3(1)=21
b1(1)%x3(1)=a1(1)%x3(1)+1
if (a1(1)%x3(1)/=22) print *,105
if (b1(1)%x3(1)/=22) print *,106
end
call s1
print *,'pass'
end
