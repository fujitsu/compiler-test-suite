MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2(2)
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
    TYPE(x), INTENT(IN) :: d
    TYPE(x),allocatable :: r
allocate(r)
   r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: v(1),w(3)
  type e0
    type(x) w(3)
  end type
type e
  integer:: dx
  TYPE(x) :: v(3)
  type (e0) :: q(2)
  end type
  type ee
    type(e):: h
  end type
  type (ee),allocatable::t(:)

allocate(t(2))
allocate(t(2)%h%v(1)% z1(2),source=1)
allocate(t(2)%h%v(2)% z1(2),source=2)
allocate(t(2)%h%v(3)% z1(2),source=3)
         t(2)%h%v(1)% z2=1
         t(2)%h%v(2)% z2=2
         t(2)%h%v(3)% z2=3
allocate(t(2)%h%v(1)% z3(2),source=1)
allocate(t(2)%h%v(2)% z3(2),source=2)
allocate(t(2)%h%v(3)% z3(2),source=3)
k=1
w=ff( f(  t(2)%h%v(1) ),k+1)
if (any(w(1)%z1/=3 )) print *,101
if (any(w(1)%z2/=3 )) print *,101
if (any(w(1)%z3/=3 )) print *,101
if (any(w(2)%z1/=3 )) print *,101
if (any(w(2)%z2/=3 )) print *,101
if (any(w(2)%z3/=3 )) print *,101
if (any(w(3)%z1/=3 )) print *,101
if (any(w(3)%z2/=3 )) print *,101
if (any(w(3)%z3/=3 )) print *,101
deallocate(t)
allocate(t(2))
allocate(t(2)%h%v(1)% z1(2),source=1)
allocate(t(2)%h%v(2)% z1(2),source=2)
allocate(t(2)%h%v(3)% z1(2),source=3)
         t(2)%h%v(1)% z2=1
         t(2)%h%v(2)% z2=2
         t(2)%h%v(3)% z2=3
allocate(t(2)%h%v(1)% z3(2),source=1)
allocate(t(2)%h%v(2)% z3(2),source=2)
allocate(t(2)%h%v(3)% z3(2),source=3)
k=1
w=ff(     t(2)%h%v(1) ,k+1)
if (any(w(1)%z1/=3 )) print *,101
if (any(w(1)%z2/=3 )) print *,101
if (any(w(1)%z3/=3 )) print *,101
if (any(w(2)%z1/=3 )) print *,101
if (any(w(2)%z2/=3 )) print *,101
if (any(w(2)%z3/=3 )) print *,101
if (any(w(3)%z1/=3 )) print *,101
if (any(w(3)%z2/=3 )) print *,101
if (any(w(3)%z3/=3 )) print *,101
deallocate(t)
allocate(t(2))
allocate(t(2)%h%v(1)% z1(2),source=1)
allocate(t(2)%h%v(2)% z1(2),source=2)
allocate(t(2)%h%v(3)% z1(2),source=3)
         t(2)%h%v(1)% z2=1
         t(2)%h%v(2)% z2=2
         t(2)%h%v(3)% z2=3
allocate(t(2)%h%v(1)% z3(2),source=1)
allocate(t(2)%h%v(2)% z3(2),source=2)
allocate(t(2)%h%v(3)% z3(2),source=3)
k=1
w=ff(     t(2)%h%v    ,k+1)
if (any(w(1)%z1/=3 )) print *,101
if (any(w(1)%z2/=3 )) print *,101
if (any(w(1)%z3/=3 )) print *,101
if (any(w(2)%z1/=4 )) print *,101
if (any(w(2)%z2/=4 )) print *,101
if (any(w(2)%z3/=4 )) print *,101
if (any(w(3)%z1/=5 )) print *,101
if (any(w(3)%z2/=5 )) print *,101
if (any(w(3)%z3/=5 )) print *,101
deallocate(t)
allocate(t(2))
allocate(t(2)%h%v(1)% z1(2),source=1)
allocate(t(2)%h%v(2)% z1(2),source=2)
allocate(t(2)%h%v(3)% z1(2),source=3)
         t(2)%h%v(1)% z2=1
         t(2)%h%v(2)% z2=2
         t(2)%h%v(3)% z2=3
allocate(t(2)%h%v(1)% z3(2),source=1)
allocate(t(2)%h%v(2)% z3(2),source=2)
allocate(t(2)%h%v(3)% z3(2),source=3)
k=1
w=ff( ff(  t(2)%h%v,k+1 )  ,k+1 )
if (any(w(1)%z1/=3 +2)) print *,101
if (any(w(1)%z2/=3 +2)) print *,101
if (any(w(1)%z3/=3 +2)) print *,101
if (any(w(2)%z1/=4 +2)) print *,101
if (any(w(2)%z2/=4 +2)) print *,101
if (any(w(2)%z3/=4 +2)) print *,101
if (any(w(3)%z1/=5 +2)) print *,101
if (any(w(3)%z2/=5 +2)) print *,101
if (any(w(3)%z3/=5 +2)) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
