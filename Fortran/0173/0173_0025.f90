MODULE m1
  TYPE :: x
    integer, pointer     :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
allocate(r%z(1))
   r%z = d%z
  END FUNCTION 
subroutine ss(v,w)
  TYPE(x) :: v(:),w(:)
allocate(v(1)% z(1),source=1)
w= f(  v )
if (w(1)%z(1)/=1 ) print *,101
end subroutine
END MODULE 
subroutine s2
use  m1
  TYPE(x) :: v(1),w(1)
allocate(w(1)% z(1))
call       ss(v,w)
end
do k=1,30
call s2
end do
print *,'pass'
end
