MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: v(3),w(3),g(3)
allocate(v(2)% z(1),source=1)
g(1:3:2)=   v(2) 
if (g(1)%z(1)/=1 ) print *,4101
if (allocated(g(2)%z)) print *,4202
if (g(3)%z(1)/=1 ) print *,4103
end
do k=1,30
call s1
end do
print *,'pass'
end
