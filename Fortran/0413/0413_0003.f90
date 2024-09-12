module m1
integer(8),parameter::n=2147483648_8+100_8
 type x8(k)
   integer(8),kind::k
   integer (8) :: a=k
 end type
 type (x8(n)) :: v1
 type (x8(n)),allocatable :: v2
contains
subroutine s1
if (v1%a/=n) print *,101
 allocate (x8(n):: v2)
if (v2%a/=n) print *,102
end subroutine
end
use m1
call s1
 print *,'pass'
end
