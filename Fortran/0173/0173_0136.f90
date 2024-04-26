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
integer::n2=2
do k=1,n
allocate(v(k)% z(3),source=k)
end do
v(n2:)= v(:n-1)
if (any(v(1)%z/=1 )) print *,101
do k=2,n
if (any(v(k)%z/=k-1 )) print *,102
end do
end
integer::n=150
do k=1,n  
call s1(n )
end do
print *,'pass'
end
