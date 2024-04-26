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
subroutine s2
use  m1
parameter(n=1000)
  TYPE(x) :: v(n*2),w(n*2)
logical:: mask(n*2)=.false.
mask(1)=.true.
do k=1,n*2
allocate(v(k)% z(1),source=1)
end do
where (mask)
w=f(v)
end where
if (w(1)% z(1)/=1) print *,10131
do k=2,n*2
if (allocated(w(k)% z)) print *,10132
end do
end
do k=1,100
call s2
end do
print *,'pass'
end
