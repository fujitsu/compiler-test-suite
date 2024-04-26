MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d , c ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    complex , INTENT(IN) :: c
    TYPE(x) :: r
   r=d
   r%z=d%z+int(c)+imag(c)
  END FUNCTION 
END MODULE 
subroutine s1(n)
use  m1
  TYPE(x) :: v(n)
complex ::c(n)
c=(1,1)
do k=1,n
allocate(v(k)% z(3),source=1)
end do
v= f(  f( f( v ,c+c ) ,c+c ) , c+c)
do k=1,n
if (any(v(k)%z/=13)) print *,101,v(k)%z
end do
end
integer::n=150
do k=1,n  
call s1(n )
end do
print *,'pass'
end
