MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: v(6),w(3)
logical:: mask3(3)=[.true.,.false.,.false.]
logical:: mask6(6)=[.true.,.false.,.false.,.false.,.false.,.false.]
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
where (mask3)
v(4:6)= f(  v(:3) )
end where
if (v(1)%z(1)/=1) print *,101
if (v(2)%z(1)/=1) print *,101
if (v(3)%z(1)/=1) print *,101
if (v(4)%z(1)/=1) print *,101
if (allocated(v(5)%z)) print *,102
if (allocated(v(6)%z)) print *,102
v(2:5)=f(w(1))
if (v(1)%z(1)/=1) print *,101
if (allocated(v(2)%z)) print *,102
if (allocated(v(3)%z)) print *,102
if (allocated(v(4)%z)) print *,102
if (allocated(v(5)%z)) print *,102
if (allocated(v(6)%z)) print *,102
where (mask6)
v=v(1)
end where
if (v(1)%z(1)/=1) print *,101
if (allocated(v(2)%z)) print *,102
if (allocated(v(3)%z)) print *,102
if (allocated(v(4)%z)) print *,102
if (allocated(v(5)%z)) print *,102
if (allocated(v(6)%z)) print *,102
v(1)=w(1)
end
use m1
do k=1,1000
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=1)
allocate(v(3)% z(1),source=1)
call s1
end do
print *,'pass'
end
