module km
integer,parameter::kh=1000
end
module m1
use km
type t1
integer :: i = 2
integer,allocatable :: alc
contains
final :: f1
end type

type t2
type(t1) :: cmp
type(t1),allocatable :: cmp_alc
contains
final :: f2
end type

contains
subroutine f1(d1)
type(t1) :: d1
write(41,*) 1001
end subroutine

subroutine f2(d1)
type(t2) :: d1
write(42,*) 2001
end subroutine

elemental impure subroutine s1(d1)
type(t2),intent(out) :: d1
allocate(d1% cmp_alc)
write(43,'(z16.16)') loc( d1%cmp_alc)
allocate(d1% cmp_alc%alc)
write(44,'(z16.16)') loc( d1%cmp_alc%alc)
allocate(d1% cmp%alc)
write(45,'(z16.16)') loc( d1%cmp%alc)
end subroutine
end

use m1
type(t2) :: obj(3)
do k=1,kh
call s1(obj)
end do
call chk1
call chk2
call chk(43)

print *,'pass'
end
subroutine chk1
use km
rewind 41
do k=1,(kh*2 -1)*3
Read(41,*) kk
if(kk/=1001) stop1000
end do
end
subroutine chk2
use km
rewind 42
do k=1,kh*3
Read(42,*) kk
if(kk/=2001) stop2000
end do
end

subroutine chk(n)
use km
character(16):: c,cc(100)
k=0
rewind n
do nn=1,kh*3
 read(n,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>100) then
    print *,'Eroor memory leak ',n
    return
 endif
 cc(k)=c
2 continue
end do
end
