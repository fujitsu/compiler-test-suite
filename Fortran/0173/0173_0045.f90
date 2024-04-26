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
  TYPE(x) :: v(1),w(1)
  logical  :: m(1)=.true.
allocate(v(1)% z(1),source=1)
where (m)
w=   v 
end where
if (w(1)%z(1)/=1 ) print *,101
where (m)
w= f(  v )
end where
if (w(1)%z(1)/=1 ) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
