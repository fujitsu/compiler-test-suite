MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
contains
 function f( v ) 
 type (x):: f(1),v(1)
 f=v
end function
end
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: w(1),v(1)
allocate(w(1)% z(1),source=1)
allocate(v(1)% z(1),source=1)
w=  w 
if (w(1)%z(1)/=1 ) print *,101
w=  f(w) 
if (w(1)%z(1)/=1 ) print *,102
w=  v 
if (w(1)%z(1)/=1 ) print *,103
w=  f(v) 
if (w(1)%z(1)/=1 ) print *,104
end
do k=1,100
call s1
end do
print *,'pass'
end
