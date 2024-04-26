MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d,a ) RESULT( r )
    TYPE(x), INTENT(IN) :: d,a
    TYPE(x) :: r
   r=d
   if (allocated(d%z)) r%z=d%z+a%z+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(6),w(6)
allocate(v(1)% z(2),source=[01,02])
allocate(v(2)% z(2),source=[11,12])
allocate(v(3)% z(2),source=[21,22])
v= f(  v , v(2) )
if (any(v(1)%z/=[13,15]) ) print *,101
if (any(v(2)%z/=[23,25]) ) print *,102
if (any(v(3)%z/=[33,35]) ) print *,103
if (allocated(v(4)%z )) print *,201
if (allocated(v(5)%z )) print *,202
if (allocated(v(6)%z )) print *,203
end
do k=1,100
call s1
end do
print *,'pass'
end
