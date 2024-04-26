MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d,a ) RESULT( r )
    TYPE(x), INTENT(IN) :: d,a
    TYPE(x) :: r
   r=d
 if (allocated(d%z)) r%z=d%z+a%z+1
  END FUNCTION 
END MODULE 
subroutine s1(k)
use  m1
  TYPE(x) :: v(k,1,1),w(k,1,1)
allocate(v(1,1,1)% z(2),source=[01,02])
allocate(v(2,1,1)% z(2),source=[11,12])
allocate(v(3,1,1)% z(2),source=[21,22])
v= f(  v , v(k-4,1,1) )
if (any(v(1,1,1)%z/=[13,15]) ) print *,101
if (any(v(2,1,1)%z/=[23,25]) ) print *,102
if (any(v(3,1,1)%z/=[33,35]) ) print *,103
if (allocated(v(4,1,1)%z )) print *,201
if (allocated(v(5,1,1)%z )) print *,202
if (allocated(v(6,1,1)%z )) print *,203
w= f(  v , v(k-4,1,1) )
if (any(v(1,1,1)%z/=[13,15]) ) print *,101
if (any(v(2,1,1)%z/=[23,25]) ) print *,102
if (any(v(3,1,1)%z/=[33,35]) ) print *,103
if (allocated(v(4,1,1)%z )) print *,201
if (allocated(v(5,1,1)%z )) print *,202
if (allocated(v(6,1,1)%z )) print *,203
if (any(w(1,1,1)%z/=[13,15]+[23,25]+1) ) print *,101
if (any(w(2,1,1)%z/=[23,25]+[23,25]+1) ) print *,102
if (any(w(3,1,1)%z/=[33,35]+[23,25]+1) ) print *,103
if (allocated(w(4,1,1)%z )) print *,201
if (allocated(w(5,1,1)%z )) print *,202
if (allocated(w(6,1,1)%z )) print *,203
end
do kk=1,100
call s1(6)
end do
print *,'pass'
end
