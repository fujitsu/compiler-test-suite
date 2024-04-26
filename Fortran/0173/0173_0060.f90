MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:,:,:,:,:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+1
  END FUNCTION 
END MODULE 
subroutine s1(k)
use  m1
  TYPE(x) :: v(k),w(k)
allocate(v(1)% z(1,1,2,1,2),source=1)
v= f(  v )
if (any(v(1)%z/=2) ) print *,101
w= f(  v )
if (any(v(1)%z/=2) ) print *,101
if (any(w(1)%z/=3) ) print *,101
end
do kk=1,100
call s1(1)
end do
print *,'pass'
end
