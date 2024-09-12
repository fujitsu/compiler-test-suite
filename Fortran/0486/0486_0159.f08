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
subroutine s1(n,m,k,nn)
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
end where
end
do kk=1,100
call s1(2,3,1,kk)
end do
print *,'pass'
end
