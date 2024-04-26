MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
logical::t=.true.
  TYPE(x) :: v(3),w(3),y(3)
allocate(v(1)% z(1),source=1)
allocate(w(1)% z(1),source=1)
allocate(y(1)% z(1),source=1)
v=   v(1) 
if (v(1)%z(1)/=1 ) print *,102
if (v(2)%z(1)/=1 ) print *,103
if (v(3)%z(1)/=1 ) print *,104
w= f(  w(1) )
if (w(1)%z(1)/=2 ) print *,112
if (w(2)%z(1)/=2 ) print *,113
if (w(3)%z(1)/=2 ) print *,114
y= merge(  y(1) , v(1) , t )
if (y(1)%z(1)/=1 ) print *,122
if (y(2)%z(1)/=1 ) print *,123
if (y(3)%z(1)/=1 ) print *,124
end
do k=1,1000
call s1
end do
print *,'pass'
end
