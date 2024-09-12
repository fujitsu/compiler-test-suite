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
subroutine s1
use  m1
type y
integer::d
  TYPE(x) :: v(4,3),w(4,3)
end type
type(y)::g(3)

allocate(g(2)%v(4,2)% z(1),source=1)
allocate(g(2)%w(4,2)% z(10),source=-1)
forall (k=1:4)
g(2)%v(k,:)= g(2)%w(k,:)
end forall
if (size(g(2)%v(4,2)%z)/=10      ) print *,101
if (g(2)%v(4,2)%z(10)/=-1 ) print *,102
end
  do k=1,30
  call s1
  end do
print *,'pass'
end
