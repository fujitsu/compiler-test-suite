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
write(11,'(z16.16)') loc( d1%cmp_alc)
allocate(d1% cmp_alc%alc)
write(12,'(z16.16)') loc( d1%cmp_alc%alc)
allocate(d1% cmp%alc)
write(13,'(z16.16)') loc( d1%cmp%alc)
end subroutine
end

use m1
type(t2) :: obj
do k=1,kh
call s1(obj)
end do
print *,'pass'
end
subroutine chk1
use km
rewind 1
do k=1,kh*2 -1
Read(1,*) kk
if(kk/=1001) stop1000
end do
end
subroutine chk2
use km
rewind 2
do k=1,kh
Read(2,*) kk
if(kk/=2001) stop2000
end do
end

subroutine chk(n)
use km
character(16):: c,cc(100)
k=0
rewind n
do nn=1,kh
 read(n,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>100) then
    print *,'Error memory leak ',n
    return
 endif
 cc(k)=c
2 continue
end do
end


