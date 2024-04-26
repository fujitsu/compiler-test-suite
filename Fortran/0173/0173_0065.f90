MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: y1
    integer, ALLOCATABLE :: z2(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z1=d%z1+1
   r%z2=d%z2+1
   r%y1=d%y1+1
  END FUNCTION 
END MODULE 
subroutine s1(k)
use  m1
  TYPE(x) :: v(k),w(k)
allocate(v(1)% z1(1),source=1)
allocate(v(1)% z2(1),source=2)
v(1)%y1=3
v= f(  v )
if (v(1)%z1(1)/=2 ) print *,101
if (v(1)%y1   /=4 ) print *,102
if (v(1)%z2(1)/=3 ) print *,103
w= f(  v )
if (v(1)%z1(1)/=2 ) print *,101
if (v(1)%y1   /=4 ) print *,102
if (v(1)%z2(1)/=3 ) print *,103
if (w(1)%z1(1)/=2+1) print *,101
if (w(1)%y1   /=4+1) print *,102
if (w(1)%z2(1)/=3+1) print *,103
end
do kk=1,100
call s1(1)
end do
print *,'pass'
end
