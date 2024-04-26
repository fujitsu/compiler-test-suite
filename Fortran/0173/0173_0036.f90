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
  TYPE(x) :: v(6)
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=2)
allocate(v(3)% z(1),source=3)
allocate(v(4)% z(100),source=-1)
allocate(v(5)% z(100),source=-2)
allocate(v(6)% z(100),source=-3)
v(4:6)= f(  v(1:3) )
if (v(1)%z(1)/=1 ) print *,101
if (v(2)%z(1)/=2 ) print *,102
if (v(3)%z(1)/=3 ) print *,103
if (v(4)%z(1)/=1 ) print *,201
if (v(5)%z(1)/=2 ) print *,202
if (v(6)%z(1)/=3 ) print *,203
end
do k=1,100
call s1
end do
print *,'pass'
end
