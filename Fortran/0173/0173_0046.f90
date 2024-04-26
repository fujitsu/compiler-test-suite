MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z +1
  END FUNCTION 
END MODULE 
subroutine s1

use  m1
  TYPE(x) :: v(3),w(3)
  logical,parameter::t=.true.
  logical  :: m(3)=[t,.not.t,t]
allocate(v(1)% z(1),source=1)
allocate(v(3)% z(1),source=3)
where (m)
w=   v 
end where
if (w(1)%z(1)/=1 ) print *,101
if (allocated(w(2)%z)) print *,103
if (w(3)%z(1)/=3 ) print *,102
where (m)
w= f(  v )
end where
if (w(1)%z(1)/=2 ) print *,201
if (allocated(w(2)%z)) print *,203
if (w(3)%z(1)/=4 ) print *,202
end
do k=1,100
call s1
end do
print *,'pass'
end
