subroutine s1
type x
  integer,allocatable::z(:)
end type
  TYPE(x) :: v,w,q
logical::t=.true.
!$omp parallel private(v,w,q)
allocate(v% z(1),source=1)
w= f()
if (w%z(1)/=1 ) print *,101
w= merge( v , q, t)
if (w%z(1)/=1 ) print *,101
!$omp end parallel
contains
function f() result(r)
type(x):: r
allocate(r%z(1),source=1)
end function
end
do k=1,1000
call s1
end do
print *,'pass'
end
