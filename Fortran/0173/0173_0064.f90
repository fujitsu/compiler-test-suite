MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d,a ) RESULT( r )
    TYPE(x), INTENT(IN) :: d,a
    TYPE(x) :: r
   r=d
   r%z=d%z+a%z+1
  END FUNCTION 
END MODULE 
subroutine s1(n,m,k)
use  m1
  TYPE(x) :: v(n,m,k),w(n,m,k)
allocate(v(2,1,1)% z(2),source=[01,02])
allocate(v(2,2,1)% z(2),source=[11,12])
allocate(v(n,m,k)% z(2),source=[21,22])
v(n,n:,:)= f(  v(n,:n,:) , v(n,n,1) )
if (allocated(v(1,1,1)%z )) print *,201
if (allocated(v(1,2,1)%z )) print *,202
if (allocated(v(1,3,1)%z )) print *,203
if (any(v(2,1,1)%z/=[01,02]) ) print *,101
if (any(v(2,2,1)%z/=[13,15]) ) print *,102
if (any(v(n,m,k)%z/=[23,25]) ) print *,103

w(n,n:,:)= f(  v(n,:n,:) , v(n,n,1) )
if (allocated(v(1,1,1)%z )) print *,201
if (allocated(v(1,2,1)%z )) print *,202
if (allocated(v(1,3,1)%z )) print *,203
if (any(v(2,1,1)%z/=[01,02]) ) print *,101
if (any(v(2,2,1)%z/=[13,15]) ) print *,102
if (any(v(n,m,k)%z/=[23,25]) ) print *,103

if (allocated(w(1,1,1)%z )) print *,201
if (allocated(w(1,2,1)%z )) print *,202
if (allocated(w(1,3,1)%z )) print *,203
if (allocated(w(2,1,1)%z )) print *,201
if (any(w(2,2,1)%z/=[01,02]+[13,15]+1) ) print *,102
if (any(w(n,m,k)%z/=[13,15]+[13,15]+1) ) print *,103
end
do kk=1,100
call s1(2,3,1)
end do
print *,'pass'
end
