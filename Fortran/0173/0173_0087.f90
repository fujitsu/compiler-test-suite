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
allocate(v(2)% z(1),source=1)
allocate(w(2)% z(1),source=1)
allocate(y(2)% z(1),source=1)
w(2)=   w(2) 
if (w(2)%z(1)/=1 ) print *,201
v(2)= f(  v(2) )
if (v(2)%z(1)/=2 ) print *,102
y(2)= merge(  y(2) , v(1) , t )
if (y(2)%z(1)/=1 ) print *,302
end
subroutine s2(n,k)
use  m1
logical::t=.true.
  TYPE(x) :: v(2),w(2),y(2)
allocate(v(n)% z(1),source=1)
allocate(w(n)% z(1),source=1)
allocate(y(n)% z(1),source=1)
w(n)=   w(k) 
if (w(n)%z(1)/=1 ) print *,201
v(n)= f(  v(k) )
if (v(n)%z(1)/=2 ) print *,102
y(n)= merge(  y(k) , v(1) , t )
if (y(n)%z(1)/=1 ) print *,302
end
do k=1,1000
call s1
call s2(2,2)
end do
print *,'pass'
end
