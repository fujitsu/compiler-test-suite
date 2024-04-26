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
  TYPE(x) :: v(3),w(3)
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=2)
allocate(v(3)% z(1),source=3)
do k=1,3
v(k)= f(  v(k) )
end do
if (v(1)%z(1)/=1 ) print *,101
if (v(2)%z(1)/=2 ) print *,102
if (v(3)%z(1)/=3 ) print *,103
end
do k=1,100
call s1
end do
print *,'pass'
end
