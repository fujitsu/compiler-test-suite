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
allocate(v1%x2,source=[2,3],stat=k)
if (s((v1))+s((v1))/=2) print *,101
if (k/=0) print *,103
end
call s1
print *,'pass'
end
