MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
end
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: w(1)
allocate(w(1)% z(1),source=1)
w=  w 
if (w(1)%z(1)/=1 ) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
