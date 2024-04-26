MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
  TYPE e
    TYPE(x),pointer :: w(:)
  end type
  type ee
    type(e),pointer:: h
  end type
  type (ee),pointer::t
CONTAINS
  elemental FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: v(-3:1)
do k=-3,1
allocate(v(k)% z1(-2:1),source=1)
         v(k)% z2=1
allocate(v(k)% z3(-2:1),source=1)
end do
t%h%w=   v(:)
do k=-3,1
if (any(t%h%w(k)%z1(-2:1)/=1 )) print *,101
if (   (t%h%w(k)%z2/=1 )) print *,101
if (any(t%h%w(k)%z3(-2:1)/=1 )) print *,101
end do
end
use m1
allocate(t)
allocate(t%h)
allocate(t%h%w(-3:1))
do k=1,30
call s1
end do
print *,'pass'
end
