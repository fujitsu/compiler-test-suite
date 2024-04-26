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
v(:k,:,:)= f(  v(n:,:,:) , v(n,n,k) )
if (any(v(1,1,1)%z/=[13,15]) ) print *,101
if (any(v(1,2,1)%z/=[23,25]) ) print *,102
if (any(v(1,3,1)%z/=[33,35]) ) print *,103
if (.not.allocated(v(2,1,1)%z )) print *,201
if (.not.allocated(v(2,2,1)%z )) print *,202
if (.not.allocated(v(n,m,k)%z )) print *,203
if (any(v(2,1,1)%z/=[01,02]) ) print *,101
if (any(v(2,2,1)%z/=[11,12]) ) print *,102
if (any(v(n,m,k)%z/=[21,22]) ) print *,103
w(:k,:,:)= f(  v(n:,:,:) , v(n,n,k) )
if (any(v(1,1,1)%z/=[13,15]) ) print *,101
if (any(v(1,2,1)%z/=[23,25]) ) print *,102
if (any(v(1,3,1)%z/=[33,35]) ) print *,103
if (.not.allocated(v(2,1,1)%z )) print *,201
if (.not.allocated(v(2,2,1)%z )) print *,202
if (.not.allocated(v(n,m,k)%z )) print *,203
if (any(v(2,1,1)%z/=[01,02]) ) print *,101
if (any(v(2,2,1)%z/=[11,12]) ) print *,102
if (any(v(n,m,k)%z/=[21,22]) ) print *,103

if (any(w(1,1,1)%z/=[13,15]) ) print *,101
if (any(w(1,2,1)%z/=[23,25]) ) print *,102
if (any(w(1,3,1)%z/=[33,35]) ) print *,103
if (allocated(w(2,1,1)%z )) print *,201
if (allocated(w(2,2,1)%z )) print *,202
if (allocated(w(n,m,k)%z )) print *,203
end

do kk=1,100
call s1(2,3,1)
end do
print *,'pass'
end
