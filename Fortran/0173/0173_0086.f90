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
  TYPE(x) :: v(2),w(2),y(2)
allocate(v(1)% z(1),source=1)
allocate(w(1)% z(1),source=1)
allocate(y(1)% z(1),source=1)
w(2)=   w(1) 
if (w(1)%z(1)/=1 ) print *,201
if (w(2)%z(1)/=1 ) print *,202
v(2)= f(  v(1) )
if (v(1)%z(1)/=1 ) print *,101
if (v(2)%z(1)/=2 ) print *,102
y(2)= merge(  y(1) , v(1) , t )
if (y(1)%z(1)/=1 ) print *,301
if (y(2)%z(1)/=1 ) print *,302
end
do k=1,1000
call s1
end do
print *,'pass'
end
