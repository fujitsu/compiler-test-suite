MODULE m1
  TYPE :: x
    integer :: z(2)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: v(1),w(1)
v(1)% z(1)=1
v(1)% z(2)=1
1 w= f(  v )
2 if (w(1)%z(1)/=1 ) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
