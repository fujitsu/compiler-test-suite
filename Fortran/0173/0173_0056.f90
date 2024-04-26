MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2(2)
    integer, ALLOCATABLE :: z3(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d,a ) RESULT( r )
    TYPE(x), INTENT(IN) :: d,a
    TYPE(x) :: r
   r=d
if (allocated(d%z1)) r%z1=d%z1+a%z1+1
                     r%z2=d%z2+a%z2+1
if (allocated(d%z3)) r%z3=d%z3+a%z3+1
  END FUNCTION 
END MODULE 
subroutine s1

use  m1
  IMPLICIT NONE
  TYPE(x) :: v(6),w(6)
allocate(v(1)% z1(2),source=[01,02])
allocate(v(2)% z1(2),source=[11,12])
allocate(v(3)% z1(2),source=[21,22])
v(1)%z2=[01,02]
v(2)%z2=[11,12]
v(3)%z2=[21,22]
allocate(v(1)% z3(2),source=[01,02])
allocate(v(2)% z3(2),source=[11,12])
allocate(v(3)% z3(2),source=[21,22])
v= f(  v , v(2) )
if (any(v(1)%z1/=[13,15]) ) print *,101
if (any(v(2)%z1/=[23,25]) ) print *,102
if (any(v(3)%z1/=[33,35]) ) print *,103
if (allocated(v(4)%z1 )) print *,201
if (allocated(v(5)%z1 )) print *,202
if (allocated(v(6)%z1 )) print *,203
if (any(v(1)%z2/=[13,15]) ) print *,101
if (any(v(2)%z2/=[23,25]) ) print *,102
if (any(v(3)%z2/=[33,35]) ) print *,103
if (any(v(1)%z3/=[13,15]) ) print *,101
if (any(v(2)%z3/=[23,25]) ) print *,102
if (any(v(3)%z3/=[33,35]) ) print *,103
if (allocated(v(4)%z3 )) print *,201
if (allocated(v(5)%z3 )) print *,202
if (allocated(v(6)%z3 )) print *,203
end
do k=1,100
call s1
end do
print *,'pass'
end
