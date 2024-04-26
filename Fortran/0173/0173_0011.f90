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
   r%z1=d%z1+a%z1+1
   r%z2=d%z2+a%z2+1
   r%z3=d%z3+a%z3+1
  END FUNCTION 
END MODULE 
subroutine s1(n,m,k)
use  m1
  TYPE(x) :: v(n,m,k),w(n,m,k)
logical::mask(n-1,m,k)
mask=.true.
allocate(v(2,1,1)% z1(2),source=[01,02])
allocate(v(2,2,1)% z1(2),source=[11,12])
allocate(v(2,3,1)% z1(2),source=[21,22])
allocate(v(2,1,1)% z3(2),source=[01,02])
allocate(v(2,2,1)% z3(2),source=[11,12])
allocate(v(2,3,1)% z3(2),source=[21,22])
v(2,1,1)% z2=[01,02]
v(2,2,1)% z2=[11,12]
v(2,3,1)% z2=[21,22]
where (mask)
v(:1,:,:)= f(  v(2:,:,:) , v(2,2,1) )
else where
v(:1,:,:)=f(w(2:,:,:),w(2,2,1))
end where
if (any(v(1,1,1)%z1/=[13,15]) ) print *,101
if (any(v(1,2,1)%z1/=[23,25]) ) print *,102
if (any(v(1,3,1)%z1/=[33,35]) ) print *,103
if (.not.allocated(v(2,1,1)%z1 )) print *,201
if (.not.allocated(v(2,2,1)%z1 )) print *,202
if (.not.allocated(v(2,3,1)%z1 )) print *,203
if (any(v(2,1,1)%z1/=[01,02]) ) print *,101
if (any(v(2,2,1)%z1/=[11,12]) ) print *,102
if (any(v(2,3,1)%z1/=[21,22]) ) print *,103

if (any(v(1,1,1)%z2/=[13,15]) ) print *,101
if (any(v(1,2,1)%z2/=[23,25]) ) print *,102
if (any(v(1,3,1)%z2/=[33,35]) ) print *,103
if (any(v(2,1,1)%z2/=[01,02]) ) print *,101
if (any(v(2,2,1)%z2/=[11,12]) ) print *,102
if (any(v(2,3,1)%z2/=[21,22]) ) print *,103

if (any(v(1,1,1)%z3/=[13,15]) ) print *,101
if (any(v(1,2,1)%z3/=[23,25]) ) print *,102
if (any(v(1,3,1)%z3/=[33,35]) ) print *,103
if (.not.allocated(v(2,1,1)%z3 )) print *,201
if (.not.allocated(v(2,2,1)%z3 )) print *,202
if (.not.allocated(v(2,3,1)%z3 )) print *,203
if (any(v(2,1,1)%z3/=[01,02]) ) print *,101
if (any(v(2,2,1)%z3/=[11,12]) ) print *,102
if (any(v(2,3,1)%z3/=[21,22]) ) print *,103
w(:1,:,:)= f(  v(2:,:,:) , v(2,2,1) )
if (any(w(1,1,1)%z1/=[01,02]+[11,12]+1)) print *,101
if (any(w(1,2,1)%z1/=[11,12]+[11,12]+1)) print *,102
if (any(w(1,3,1)%z1/=[21,22]+[11,12]+1)) print *,103
if (allocated(w(2,1,1)%z1 )) print *,201
if (allocated(w(2,2,1)%z1 )) print *,202
if (allocated(w(2,3,1)%z1 )) print *,203

if (any(w(1,1,1)%z2/=[13,15]) ) print *,101
if (any(w(1,2,1)%z2/=[23,25]) ) print *,102
if (any(w(1,3,1)%z2/=[33,35]) ) print *,103

if (any(w(1,1,1)%z3/=[01,02]+[11,12]+1)) print *,101
if (any(w(1,2,1)%z3/=[11,12]+[11,12]+1)) print *,102
if (any(w(1,3,1)%z3/=[21,22]+[11,12]+1)) print *,103
if (allocated(w(2,1,1)%z3 )) print *,201
if (allocated(w(2,2,1)%z3 )) print *,202
if (allocated(w(2,3,1)%z3 )) print *,203

if (any(v(1,1,1)%z1/=[13,15]) ) print *,101
if (any(v(1,2,1)%z1/=[23,25]) ) print *,102
if (any(v(1,3,1)%z1/=[33,35]) ) print *,103
if (.not.allocated(v(2,1,1)%z1 )) print *,201
if (.not.allocated(v(2,2,1)%z1 )) print *,202
if (.not.allocated(v(2,3,1)%z1 )) print *,203
if (any(v(2,1,1)%z1/=[01,02]) ) print *,101
if (any(v(2,2,1)%z1/=[11,12]) ) print *,102
if (any(v(2,3,1)%z1/=[21,22]) ) print *,103

if (any(v(1,1,1)%z2/=[13,15]) ) print *,101
if (any(v(1,2,1)%z2/=[23,25]) ) print *,102
if (any(v(1,3,1)%z2/=[33,35]) ) print *,103
if (any(v(2,1,1)%z2/=[01,02]) ) print *,101
if (any(v(2,2,1)%z2/=[11,12]) ) print *,102
if (any(v(2,3,1)%z2/=[21,22]) ) print *,103

if (any(v(1,1,1)%z3/=[13,15]) ) print *,101
if (any(v(1,2,1)%z3/=[23,25]) ) print *,102
if (any(v(1,3,1)%z3/=[33,35]) ) print *,103
if (.not.allocated(v(2,1,1)%z3 )) print *,201
if (.not.allocated(v(2,2,1)%z3 )) print *,202
if (.not.allocated(v(2,3,1)%z3 )) print *,203
if (any(v(2,1,1)%z3/=[01,02]) ) print *,101
if (any(v(2,2,1)%z3/=[11,12]) ) print *,102
if (any(v(2,3,1)%z3/=[21,22]) ) print *,103
end
do kk=1,100
call s1(2,3,1)
end do
print *,'pass'
end
