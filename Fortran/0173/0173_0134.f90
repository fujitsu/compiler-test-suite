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
  TYPE(x) :: v(n)
do k=1,n
allocate(v(k)% z(3),source=1)
end do
v= f(  f( f( v ) ) )
do k=1,n
if (any(v(k)%z/=4 )) print *,101
end do
end
integer::n=150
do k=1,n  
call s1(n )
end do
print *,'pass'
end
