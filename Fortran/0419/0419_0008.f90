module m
type t
 integer,allocatable:: i1
end type
end
call s1
call s2
print *,'pass'
contains
subroutine s1
use m
type(t)::ttt(2)
do k=1,2
if (allocated(ttt(k)%i1))print *,'err'
if (allocated(ttt(k)%i1))print *,'err'
ttt(k)%i1=1
ttt(k)%i1=2
end do
do k=1,2
if ((ttt(k)%i1/=2))print *,'err'
if ((ttt(k)%i1/=2))print *,'err'
end do
end subroutine
subroutine s2
use m
type(t)::ttt(2)
do k=1,2
if (allocated(ttt(k)%i1))print *,'err'
if (allocated(ttt(k)%i1))print *,'err'
allocate(ttt(k)%i1)
ttt(k)%i1=1
ttt(k)%i1=2
end do
do k=1,2
if ((ttt(k)%i1/=2))print *,'err'
if ((ttt(k)%i1/=2))print *,'err'
end do
end subroutine
end
