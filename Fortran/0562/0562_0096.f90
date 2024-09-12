module m1
type ty2
integer::ii
end type
type ty3
real::rr
end type
type,extends(ty3):: ty4
character(LEN=20)::ch
end type

contains
integer function fun(p1,p2,p3)
class(ty2),pointer,intent(in)::p1(:)
type(ty3),pointer,intent(in)::p2
class(ty4),pointer,intent(in)::p3(:)
if (.NOT.associated(p1))print*,"error",101
if (.NOT.associated(p2))print*,"error",102
if (.NOT.associated(p3))print*,"error",103
if (size(p1) /= 3)print*,105
if (size(p3) /= 4)print*,106
if (ubound(p1,1)/=4 .or. ubound(p3,1)/=6)print*,107
p1(3)%ii=7
p3(5)%ch="abcd"
fun=10
end function
end module

use m1
class(ty2),allocatable,target::tar1(:)
type(ty3),allocatable,target::tar2
class(ty4),allocatable,target::tar3(:)
call sub
print*,"Pass"
contains
subroutine sub
integer::ii
type(ty2)::obj1(2:4)
type(ty4)::obj2(3:6)
obj1%ii=0
obj2%rr=0.0
obj2%ch="xxxx"
allocate(tar1,source=obj1)
allocate(tar2)
allocate(tar3,source=obj2)
if (size(obj1) /=(size(obj2)-1))print*,"err"
ii=fun(tar1,tar2,tar3)
if (ii/=10)print*,"err",108
if (tar1(2)%ii/=0)print*,109
if (tar1(3)%ii/=7)print*,110
if (tar3(5)%ch/="abcd")print*,111
end subroutine
end
