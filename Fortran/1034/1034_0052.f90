module m1
 type x
   integer :: i1
   integer :: i2(2,2)
   integer,pointer :: i3
   integer,pointer :: i4(:,:)
   character*3 :: c1
   character*3 :: c2(2,2)
   character*3,pointer :: c3
   character*3,pointer :: c4(:,:)
 end type
end module
subroutine s(dv,di1,di2,di3,di4,dc1,dc2,dc3,dc4)
use m1
type(x)::dv,av
   integer :: ai1
   integer :: ai2(2,2)
   integer,pointer :: ai3
   integer,pointer :: ai4(:,:)
   character*3 :: ac1
   character*3 :: ac2(2,2)
   character*3,pointer :: ac3
   character*3,pointer :: ac4(:,:)
   integer :: di1
   integer :: di2(2,2)
   integer,pointer :: di3
   integer,pointer :: di4(:,:)
   character*3 :: dc1
   character*3 :: dc2(2,2)
   character*3,pointer :: dc3
   character*3,pointer :: dc4(:,:)
continue
ai1=1
ai2=2
allocate(ai3)
ai3=3
allocate(ai4(2,2))
ai4=4
ac1='1'
ac2='2'
allocate(ac3)
ac3='3'
allocate(ac4(2,2))
ac4='4'
av%i1=1
av%i2=2
allocate(av%i3)
av%i3=3
allocate(av%i4(2,2))
av%i4=4
av%c1='1'
av%c2='2'
allocate(av%c3)
av%c3='3'
allocate(av%c4(2,2))
av%c4='4'

if (ai1 /= 1) print *,"ng ai1=",ai1
if (ai3 /= 3) print *,"ng ai3=",ai3
if (ac1 .ne. "1") print *,"ng ac1=",ac1
if (ac3 .ne. "3") print *,"ng ac3=",ac3
if (av%i1 /= 1) print *,"ng av%i1=",av%i1
if (av%i3 /= 3) print *,"ng av%i3=",av%i3
if (av%c1 .ne. "1") print *,"ng av%c1=",av%c1
if (av%c3 .ne. "3") print *,"ng av%c3=",av%c3
if (di1 /= 1) print *,"ng di1=",di1
if (di3 /= 3) print *,"ng di3=",di3
if (dc1 .ne. "1") print *,"ng dc1=",dc1
if (dc3 .ne. "3") print *,"ng dc3=",dc3
if (dv%i1 /= 1) print *,"ng dv%i1=",dv%i1
if (dv%i3 /= 3) print *,"ng dv%i3=",dv%i3
if (dv%c1 .ne. "1") print *,"ng dv%c1=",dv%c1
if (dv%c3 .ne. "3") print *,"ng dv%c3=",dv%c3
do i=1,2
  do j=1,2
    if (ai2(i,j) /= 2) print *,"ng ai2=",ai2
    if (ai4(i,j) /= 4) print *,"ng ai4=",ai4
    if (ac2(i,j) .ne. "2") print *,"ng ac2=",ac2
    if (ac4(i,j) .ne. "4") print *,"ng ac4=",ac4
    if (av%i2(i,j) /= 2) print *,"ng av%i2=",av%i2
    if (av%i4(i,j) /= 4) print *,"ng av%i4=",av%i4
    if (av%c2(i,j) .ne. "2") print *,"ng av%c2=",av%c2
    if (av%c4(i,j) .ne. "4") print *,"ng av%c4=",av%c4
    if (di2(i,j) /= 2) print *,"ng di2=",di2
    if (di4(i,j) /= 4) print *,"ng di4=",di4
    if (dc2(i,j) .ne. "2") print *,"ng dc2=",dc2
    if (dc4(i,j) .ne. "4") print *,"ng dc4=",dc4
    if (dv%i2(i,j) /= 2) print *,"ng dv%i2=",dv%i2
    if (dv%i4(i,j) /= 4) print *,"ng dv%i4=",dv%i4
    if (dv%c2(i,j) .ne. "2") print *,"ng dv%c2=",dv%c2
    if (dv%c4(i,j) .ne. "4") print *,"ng dv%c4=",dv%c4
  end do
end do
end
use m1
interface
subroutine s(dv,di1,di2,di3,di4,dc1,dc2,dc3,dc4)
use m1
type(x)::dv
   integer :: di1
   integer :: di2(2,2)
   integer,pointer :: di3
   integer,pointer :: di4(:,:)
   character*3 :: dc1
   character*3 :: dc2(2,2)
   character*3,pointer :: dc3
   character*3,pointer :: dc4(:,:)
end subroutine
end interface
type(x)::dv
   integer :: di1
   integer :: di2(2,2)
   integer,pointer :: di3
   integer,pointer :: di4(:,:)
   character*3 :: dc1
   character*3 :: dc2(2,2)
   character*3,pointer :: dc3
   character*3,pointer :: dc4(:,:)
continue
di1=1
di2=2
allocate(di3)
di3=3
allocate(di4(2,2))
di4=4
dc1='1'
dc2='2'
allocate(dc3)
dc3='3'
allocate(dc4(2,2))
dc4='4'
dv%i1=1
dv%i2=2
allocate(dv%i3)
dv%i3=3
allocate(dv%i4(2,2))
dv%i4=4
dv%c1='1'
dv%c2='2'
allocate(dv%c3)
dv%c3='3'
allocate(dv%c4(2,2))
dv%c4='4'
call       s(dv,di1,di2,di3,di4,dc1,dc2,dc3,dc4)
print *,'pass'
end
