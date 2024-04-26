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
subroutine s1(n)
use  m1
  TYPE(x) :: v(n),w(n)
do k=1,n
allocate(v(k)% z(n),source=1)
end do
v= f(  v )
do k=1,n
if (v(k)%z(1)/=2 ) print *,101
end do
end
do k=1,100
call s1(1000)
end do
print *,'pass'
end
