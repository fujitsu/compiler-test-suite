module km
integer,parameter::kh=2
end
module m1
use km
type t1
integer :: i = 2
integer,allocatable :: alc
end type

type t2
type(t1) :: cmp
type(t1),allocatable :: cmp_alc
end type

contains

subroutine s1(d1)
type(t2),intent(out) :: d1
allocate(d1% cmp_alc)
write(1,'(z16.16)') loc( d1%cmp_alc)
end subroutine
end

use m1
type(t2) :: obj
do k=1,kh
call s1(obj)
end do

print *,'pass'
end
