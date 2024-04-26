MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
  TYPE e
    TYPE(x),allocatable :: w(:)
  end type
  type ee
    type(e),allocatable:: h
  end type
CONTAINS
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: v(1)
  type (ee),allocatable::t
allocate(t)
allocate(t%h)
allocate(t%h%w(-3:1))
allocate(v(1)% z1(-2:1),source=1)
         v(1)% z2=1
allocate(v(1)% z3(-2:1),source=1)
t%h%w= f(  v(1) )
do k=-3,1
if (any(t%h%w(k)%z1(-2:1)/=1 )) print *,101
if (   (t%h%w(k)%z2/=1 )) print *,101
if (any(t%h%w(k)%z3(-2:1)/=1 )) print *,101
end do
end
use m1
do k=1,30
call s1
end do
print *,'pass'
end
