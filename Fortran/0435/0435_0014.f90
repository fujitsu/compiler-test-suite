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
forall (k=2:3)
w(k)= w(k-1)
end forall
if (allocated(w(1)%z)         ) print *,101
if (allocated(w(2)%z)         ) print *,111
if (size(w(3)%z)/=10      ) print *,121
if (w(3)%z(10)/=-1 ) print *,102
end
  do k=1,30
  call s1
  end do
print *,'pass'
end
