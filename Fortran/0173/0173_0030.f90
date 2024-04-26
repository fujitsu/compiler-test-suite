MODULE m1
  TYPE :: x
    integer :: z(2)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f1( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
   r%z = d%z+1
  END FUNCTION 
  ELEMENTAL FUNCTION f2( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
   r%z = d%z+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: v(1),w(1)
v(1)% z(1)=1
v(1)% z(2)=1
v= f1(  f2(v ) )
if (v(1)%z(1)/=3 ) print *,101
end
do k=1,100
call s1
end do

print *,'pass'
end
