MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer, ALLOCATABLE :: z2(:)
    integer, ALLOCATABLE :: z3
    integer              :: z4(1)
    integer, ALLOCATABLE :: z5(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z1=d%z1+1
   r%z2=d%z2+1
   r%z3=d%z3+1
   r%z4=d%z4+1
   r%z5=d%z5+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: v
do k=1,100
allocate(v% z1(1),source=1)
allocate(v% z2(1),source=1)
allocate(v% z3   ,source=1)
v% z4  =1
allocate(v% z5(1),source=1)
v= f(  f(f(v ) ))
if (v%z1(1)/=4 ) print *,101
if (v%z2(1)/=4 ) print *,101
if (v%z3   /=4 ) print *,101
if (v%z4(1)/=4 ) print *,101
if (v%z5(1)/=4 ) print *,101
deallocate(v%z1,v%z2,v%z3,v%z5)
end do
end
  do k=1,100
  call s1
  end do
print *,'pass'
end
