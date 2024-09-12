module km
integer,parameter::kh=1000
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

type t3
type(t2) :: cmp
type(t2),allocatable :: cmp_alc
end type

type t4
type(t3) :: cmp
type(t3),allocatable :: cmp_alc
end type
contains

subroutine s1(d1)
type(t4),intent(out) :: d1
allocate(d1% cmp%cmp_alc)
end subroutine
subroutine s2(d1)
type(t4),intent(out) :: d1
allocate(d1% cmp%cmp_alc)
allocate(d1% cmp%cmp_alc%cmp_alc)
end subroutine
subroutine s3(d1)
type(t4),intent(out) :: d1
allocate(d1% cmp%cmp_alc)
allocate(d1% cmp%cmp_alc%cmp_alc)
allocate(d1% cmp%cmp_alc%cmp_alc%alc)
end subroutine
end

use m1
type(t4) :: obj,obj2,obj3
do k=1,kh
call s1(obj)
end do
do k=1,kh
call s2(obj2)
end do
do k=1,kh
call s3(obj3)
end do

print *,'pass'
end


