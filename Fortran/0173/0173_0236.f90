MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
    TYPE(x),pointer     :: p
CONTAINS
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x),pointer     :: r
allocate(r)
   r=d
p=>r
  END FUNCTION 
 elemental  FUNCTION ff( d ,k) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    integer, INTENT(IN) :: k
    TYPE(x) :: r
   r=d 
   r%z1=d%z1+k
   r%z2=d%z2+k
   r%z3=d%z3+k
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: v(1),w(1)
type e
  TYPE(x) :: v(1),w(1)
  end type
  type ee
    type(e):: h
  end type
  type (ee)::t

allocate(v(1)% z1(1),source=1)
         v(1)% z2=1
allocate(v(1)% z3(1),source=1)
k=1
t%h%w=ff( f(  v(1) ),k+1)
deallocate(p)
if (t%h%w(1)%z1(1)/=3 ) print *,101
if (t%h%w(1)%z2/=3 ) print *,101
if (t%h%w(1)%z3(1)/=3 ) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
