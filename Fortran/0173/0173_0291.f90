MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(6),w(3)
logical:: mask(3)=[.true.,.false.,.true.]
allocate(v(1)% z(1),source=1)
allocate(v(3)% z(1),source=3)
where (mask)
v(2:4)= f(  v(1:3) )
end where
if (v(1)%z(1)/=1 ) print *,101
if (v(2)%z(1)/=1 ) print *,101
if (v(3)%z(1)/=3 ) print *,101
if (v(4)%z(1)/=3 ) print *,103
if (allocated(v(5)%z)) print *,1023
if (allocated(v(6)%z)) print *,1024
end
do k=1,3000
call s1
end do
print *,'pass'
end
