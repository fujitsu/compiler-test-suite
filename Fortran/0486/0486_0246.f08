module m1
   type x
     integer,allocatable::x2(:)
   end type
contains
integer function   s(v)
type (x):: v
s=1
end function
end
subroutine s1
use m1
type (x):: v1
allocatable:: q
if (s((v1))+s((v1))/=2) print *,101
allocate(q)
end
call s1
print *,'pass'
end
