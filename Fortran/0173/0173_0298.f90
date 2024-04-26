MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
parameter(n=1000)
  TYPE(x) :: v(n*2)
logical:: mask(n)=.false.
mask(1)=.true.
allocate(v(1)% z(1),source=1)
where (mask)
v(n+1:)=f(v(1))
end where
if (v(1)% z(1)/=1) print *,101
do k=2,n
if (allocated(v(k)% z)) print *,1011
end do
if (v(n+1)% z(1)/=1) print *,1012
do k=n+2,n*2
if (allocated(v(k)% z)) print *,1013
end do
end
subroutine s2
use  m1
parameter(n=1000)
  TYPE(x) :: v(n*2)
logical:: mask(n)=.false.
mask(1)=.true.
do k=1,n
allocate(v(k)% z(1),source=1)
end do
where (mask)
v(n+1:)=f(v(:n))
end where
do k=1,n
if (v(k)% z(1)/=1) print *,10121
end do
if (v(n+1)% z(1)/=1) print *,10131
do k=n+2,n*2
if (allocated(v(k)% z)) print *,10132
end do
end
do k=1,10
call s1
call s2
end do
print *,'pass'
end
