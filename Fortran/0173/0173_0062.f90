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
subroutine s1(n,m)
use  m1
  TYPE(x) :: v(n,m,1),w(n,m,1)
allocate(v(2,1,1)% z(2),source=[01,02])
allocate(v(1,2,1)% z(2),source=[11,12])
allocate(v(2,2,1)% z(2),source=[21,22])
v= f(  v , v(1,n,1) )
if (any(v(2,1,1)%z/=[13,15]) ) print *,101
if (any(v(1,2,1)%z/=[23,25]) ) print *,102
if (any(v(2,2,1)%z/=[33,35]) ) print *,103
if (allocated(v(1,1,1)%z )) print *,201
if (allocated(v(1,3,1)%z )) print *,202
if (allocated(v(n,m,1)%z )) print *,203
w= f(  v , v(1,n,1) )
if (any(v(2,1,1)%z/=[13,15]) ) print *,101
if (any(v(1,2,1)%z/=[23,25]) ) print *,102
if (any(v(2,2,1)%z/=[33,35]) ) print *,103
if (allocated(v(1,1,1)%z )) print *,201
if (allocated(v(1,3,1)%z )) print *,202
if (allocated(v(n,m,1)%z )) print *,203

if (any(w(2,1,1)%z/=[13,15]+[23,25]+1) ) print *,101
if (any(w(1,2,1)%z/=[23,25]+[23,25]+1) ) print *,102
if (any(w(2,2,1)%z/=[33,35]+[23,25]+1) ) print *,103
if (allocated(w(1,1,1)%z )) print *,201
if (allocated(w(1,3,1)%z )) print *,202
if (allocated(w(n,m,1)%z )) print *,203
end
do kk=1,100
call s1(2,3)
end do
print *,'pass'
end
