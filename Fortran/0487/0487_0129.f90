module m1
  type x
     integer,allocatable:: x1(:)
  end type
end
subroutine s1(k)
use m1
type (x),allocatable:: a(:)
allocate( a(2))
allocate( a(1)%x1(2),source=1)
allocate( a(2)%x1(2),source=2)

if (any(a(1)%x1/=1) ) print *,101
if (any(a(2)%x1/=2) ) print *,102
if (k==1) deallocate(a)
if (k==2) call s(a)
if (k==1 .or. k==2 ) then
  if (allocated(a)) print *,201
endif
contains
subroutine s(a)
type (x),allocatable,intent(out):: a(:)
  if (allocated(a)) print *,221
end subroutine
end
do n=1,100
call s1(mod(n,3))
end do
print *,'pass'
end
