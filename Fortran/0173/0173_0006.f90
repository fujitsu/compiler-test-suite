MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
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
  logical::m(k)
m=.false.
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=2)
allocate(v(3)% z(1),source=3)
where(m(1:k-3))
w(k-2:k)= f(  v(k-5:k-3) )
end where
if (allocated(w(1)%z) )print *,201
if (allocated(w(2)%z) )print *,202
if (allocated(w(3)%z) )print *,203
if (allocated(w(4)%z) )print *,201
if (allocated(w(5)%z) )print *,202
if (allocated(w(6)%z) )print *,203
if (allocated(v(4)%z) )print *,301
if (allocated(v(5)%z) )print *,302
if (allocated(v(6)%z) )print *,303
end
do k=1,100
call s1(6)
end do
print *,'pass'
end
