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
  TYPE(x) :: v(3),w(3),g(3)
allocate(v(2)% z(1),source=1)
w=   v 
if (allocated(w(1)%z)) print *,201
if (w(2)%z(1)/=1 ) print *,101
if (allocated(w(3)%z)) print *,202
w(2:3)=   v(:2) 
if (allocated(w(1)%z)) print *,1201
if (allocated(w(2)%z)) print *,1201
if (w(3)%z(1)/=1 ) print *,1203
g=   v(2) 
if (g(1)%z(1)/=1 ) print *,2101
if (g(2)%z(1)/=1 ) print *,2101
if (g(3)%z(1)/=1 ) print *,2101
g=   v(1) 
if (allocated(g(1)%z)) print *,3201
if (allocated(g(2)%z)) print *,3202
if (allocated(g(3)%z)) print *,3203
g(1:3:2)=   v(2) 
if (g(1)%z(1)/=1 ) print *,4101
if (allocated(g(2)%z)) print *,4202
if (g(3)%z(1)/=1 ) print *,4103
end
do k=1,30
call s1
end do
print *,'pass'
end
