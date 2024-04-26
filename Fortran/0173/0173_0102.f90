module m1
type x
  integer:: a
  integer,allocatable::z(:)
end type
end
subroutine s1
use m1
  TYPE(x) :: v,w
v= x(1,w%z)
if (v%a   /=1 ) print *,312
if (allocated(v%z) ) print *,102
v= x(2,[1]  )
if (.not.allocated(v%z) ) print *,111
if (v%a   /=2 ) print *,412
if (v%z(1)/=1 ) print *,112
end
do k=1,2000
call s1
end do
print *,'pass'
end
