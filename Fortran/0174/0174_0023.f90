MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer, ALLOCATABLE :: z2(:)
    integer, ALLOCATABLE :: z3(:)
    integer, ALLOCATABLE :: z4(:)
    integer, ALLOCATABLE :: z5(:)
  END TYPE
logical::mask(3)=[.true.,.false.,.true.]
CONTAINS
  FUNCTION fx( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d(:)
    TYPE(x) :: r(size(d))
   r=d
   do k=1,size(r)
   r(k)%z1=d(k)%z1+3
   r(k)%z2=d(k)%z2+3
   r(k)%z3=d(k)%z3+3
   r(k)%z4=d(k)%z4+3
   r(k)%z5=d(k)%z5+3
    end do
  END FUNCTION 
elemental   FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z1=d%z1+3
   r%z2=d%z2+3
   r%z3=d%z3+3
   r%z4=d%z4+3
   r%z5=d%z5+3
  END FUNCTION 
END MODULE 
subroutine s2
use  m1
  TYPE(x) :: w(3),v(3)
do k=3,size(w)
allocate(w(k)% z1(100),source=2)
allocate(w(k)% z2(100),source=2)
allocate(w(k)% z3(100),source=2)
allocate(w(k)% z4(100),source=2)
allocate(w(k)% z5(100),source=2)
end do
v(1)=w(3)
w(3)= f(v(1))
do k=3,size(w)
if (size(w(k)%z1)/=100     ) print *,101
if (size(w(k)%z2)/=100     ) print *,101
if (size(w(k)%z3)/=100     ) print *,101
if (size(w(k)%z4)/=100     ) print *,101
if (size(w(k)%z5)/=100     ) print *,101
if (w(k)%z1(100)/=5 ) print *,102
if (w(k)%z2(100)/=5 ) print *,102
if (w(k)%z3(100)/=5 ) print *,102
if (w(k)%z4(100)/=5 ) print *,102
if (w(k)%z5(100)/=5 ) print *,102
end do
end
  do k=1,10
  call s2
  end do
print *,'pass'
end
