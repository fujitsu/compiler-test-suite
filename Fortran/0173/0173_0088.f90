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
v=   w(1) 
if (w(1)%z(1)/=1 ) print *,201
if (v(1)%z(1)/=1 ) print *,102
if (v(2)%z(1)/=1 ) print *,103
if (v(3)%z(1)/=1 ) print *,104
v= f(  w(1) )
if (w(1)%z(1)/=1 ) print *,211
if (v(1)%z(1)/=2 ) print *,112
if (v(2)%z(1)/=2 ) print *,113
if (v(3)%z(1)/=2 ) print *,114
v= merge(  w(1) , y(1) , t )
if (w(1)%z(1)/=1 ) print *,221
if (v(1)%z(1)/=1 ) print *,122
if (v(2)%z(1)/=1 ) print *,123
if (v(3)%z(1)/=1 ) print *,124
end
do k=1,1000
call s1
end do
print *,'pass'
end
