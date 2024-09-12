module m1
type ty1
type(ty2),pointer::p1
end type
type ty2
type(ty1),allocatable::p2
end type
type,extends(ty2)::ty3
character(LEN=20)::ch
end type
contains
integer function fun(dmy1,dmy2,dmy3)
type(ty1),pointer,intent(in)::dmy1
type(ty2),pointer::dmy2
type(ty3),pointer,intent(in)::dmy3
if (.NOT.associated(dmy1))print*,"error",103
if (.NOT.associated(dmy3))print*,"error",104
dmy2=>NULL()
dmy1%p1=>dmy2
allocate(dmy3%p2)
fun=10
end function
end module

use m1
type(ty1),target::tar1
type(ty2),pointer::tar2
type(ty3),target,allocatable::tar3
integer::ii
allocate(tar3)
ii=fun(tar1,tar2,tar3)
if (associated(tar1%p1))print*,101
if (.NOT.allocated(tar3%p2))print*,102
if (ii==10)print*,"Pass"
end
