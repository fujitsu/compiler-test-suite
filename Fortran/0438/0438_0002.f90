module m1
 type z
   integer:: z1
 end type
 type x
   integer:: x1
   class(z),allocatable::x2(:)
 end type
 type,extends(x):: y
   integer:: y1
 end type
end
subroutine s1
use m1
 class(x),allocatable:: a01(:)
allocate ( y:: a01(2))
if (ubound(a01,1)/=2)print *,301
if (any(ubound(a01)/=2))print *,301
end
call s1
print *,'pass'
end
