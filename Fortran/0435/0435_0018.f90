MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
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
  TYPE(x) :: v(3),w(3)
allocate(v(2)% z(1),source=1)
allocate(w(2)% z(10),source=-1)
forall (k=1:3)
v(k)= f(w(k))
end forall
if (size(v(2)%z)/=10      ) print *,101
if (v(2)%z(10)/=-1 ) print *,102
end
  do k=1,30
  call s1
  end do
print *,'pass'
end
