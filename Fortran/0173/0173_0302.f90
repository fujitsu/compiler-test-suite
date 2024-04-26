MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
parameter(n=1000)
  TYPE(x) :: v(n*2),w(n*2)
logical:: mask(n*2)=.false.
  integer,allocatable :: g(:)
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
END MODULE 
subroutine s2
use  m1
where (mask)
w=f(v)
end where
if (w(1)% z(1)/=1) print *,10131
do k=2,n*2
if (allocated(w(k)% z)) print *,10132
end do
end
use m1
mask(1)=.true.
allocate(v(1)% z(1),source=1)
call set
do k=1,100
call s2
end do
print *,'pass'
end
subroutine set
use m1
allocate(g(48*n*3))
g=-1
deallocate(g)
end
