MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
CONTAINS
 elemental  FUNCTION ff( d ,k) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    integer, INTENT(IN) :: k
    TYPE(x) :: r
   r=d 
   r%z1=d%z1+k
   r%z2=d%z2+k
   r%z3=d%z3+k
  END FUNCTION 
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d(:)
    TYPE(x),allocatable :: r(:)
allocate(r(size(d)))
   r=d
do k=1,size(d)
   r(k)%z1=d(k)%z1+1
   r(k)%z2=d(k)%z2+1
   r(k)%z3=d(k)%z3+1
end do
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
type e
  TYPE(x) :: v(3)
  end type
  type ee
    type(e):: h
  end type
  type (ee)::t

allocate(t%h%v(1)% z1(1),source=1)
         t%h%v(1)% z2=1
allocate(t%h%v(1)% z3(1),source=1)
allocate(t%h%v(2)% z1(1),source=1)
         t%h%v(2)% z2=1
allocate(t%h%v(2)% z3(1),source=1)
k=1
t%h%v(2:3)= ff(f(  t%h%v(1:2) ),k+1)
if (t%h%v(1)%z1(1)/=1 ) print *,101
if (t%h%v(1)%z2/=1 ) print *,101
if (t%h%v(1)%z3(1)/=1 ) print *,101
if (t%h%v(2)%z1(1)/=2+2 ) print *,101
if (t%h%v(2)%z2/=2+2 ) print *,101
if (t%h%v(2)%z3(1)/=2+2 ) print *,101
if (t%h%v(3)%z1(1)/=2+2 ) print *,101
if (t%h%v(3)%z2/=2+2 ) print *,101
if (t%h%v(3)%z3(1)/=2+2 ) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
