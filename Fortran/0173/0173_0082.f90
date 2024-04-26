MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f1( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+1
  END FUNCTION 
  ELEMENTAL FUNCTION f2( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+2
  END FUNCTION 

END MODULE 
subroutine s1(nn,kk)
use  m1
  TYPE(x) :: v(nn)
do n=1,nn
allocate(v(n)% z(kk),source=[1,2,3])
end do
v= f1( f2(  v ) )
do n=1,nn
if (any(v(n)%z/=[1,2,3]+3) ) print *,101
end do
end
do k=1,1000
call s1(100,3)
end do
print *,'pass'
end
