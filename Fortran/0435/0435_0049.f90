module m1
type x
  integer:: a
  integer::z(2)
end type
contains
function ff() result(r)
 type(x),allocatable::r
 allocate(r)
 r=x(2,[1,2])
end function
end
subroutine s1
use m1
  TYPE(x) :: v(2)
v=[(ff(),n=1,2)]
if (v(1)%a/=2) print *,10611
if (v(2)%a/=2) print *,10612
if (any(v(1)%z/=[1,2])) print *,10121,v(1)%z
if (any(v(2)%z/=[1,2])) print *,10621
if (size(v(2)%z)/=2) print *,10631
end
do k=1,100
call s1
end do
print *,'pass'
end
