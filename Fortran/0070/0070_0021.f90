module m1
 type x
   integer::x1
 end type
 type(x),pointer:: a1(:)
contains
subroutine alc
allocate(a1(2))
end subroutine
end
module m2
use m1,only:a2=>a1
end
subroutine s1
use m1
use m2
call alc
a1(1)%x1=1
a2(1)%x1=a1(1)%x1+1
if (a1(1)%x1/=2) print *,101
if (a2(1)%x1/=2) print *,102
end
call s1
print *,'pass'
end
