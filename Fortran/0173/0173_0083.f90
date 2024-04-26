MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f1( d ,k) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
    integer,intent(in)::k
   r=d
   r%z=d%z+k
  END FUNCTION 
  ELEMENTAL FUNCTION f2( d,k ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    integer,intent(in)::k
    TYPE(x) :: r
   r=d
   r%z=d%z+k
  END FUNCTION 

END MODULE 
subroutine s1(nn,kk,k1,k2)
use  m1
  TYPE(x) :: v(nn)
do n=1,nn
allocate(v(n)% z(kk),source=[1,2,3])
end do
v= f1( f2(  v ,k2) ,k1)
do n=1,nn
if (any(v(n)%z/=[1,2,3]+3) ) print *,101
end do
end
do k=1,1000
call s1(100,3,1,2)
end do
print *,'pass'
end
