MODULE m1
  TYPE :: x
    integer :: z(1)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
END MODULE 
subroutine s1(k)
use  m1
  TYPE(x) :: v(k),w(k)
v(1)% z(1)=1
v(2)% z(1)=2
v(3)% z(1)=3
w(k-2:k)= f(  v(k-5:k-3) )
if (w(4)%z(1)/=1 ) print *,101
if (w(5)%z(1)/=2 ) print *,102
if (w(6)%z(1)/=3 ) print *,103
end
do k=1,100
call s1(6)
end do
print *,'pass'
end
