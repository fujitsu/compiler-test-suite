MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: v(6),w(3)
logical:: mask(3)=[.true.,.false.,.true.]
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
where (mask)
v(2:4)= f(  v(1:3) )
end where
where (mask)
v(4:6)=v(2)
end where
end
use m1
allocate(v(1)% z(1),source=1)
allocate(v(3)% z(1),source=3)
do k=1,3000
call s1
end do
print *,'pass'
end
