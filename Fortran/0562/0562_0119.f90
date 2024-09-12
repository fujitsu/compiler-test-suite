module m1
type ty1
integer,pointer::ii
end type
type,extends(ty1)::ty2
character(20)::ch
end type

class(ty2),allocatable,target::tar1
type(ty2)::o1(2)
character(20)::cm
end module

program main
use m1
integer,target::t=10
o1(2)%ii=>t
allocate(tar1,source=o1(2))
tar1%ch = "compiler"
cm = fun(tar1%ch(1:4),tar1%ii)
if (o1(2)%ii /=10)print*,106
if (cm /= "fortran")print*,107,cm
print*,"Pass"
contains
function fun(p1,p2)
character(LEN=:),allocatable::fun
character(*),pointer,intent(in)::p1
integer,pointer,intent(in)::p2
if (.NOT.associated(p1))print*,101
if (.not.associated(p2))print*,102
if (LEN(p1)/=4)print*,103
if (p1/="comp")print*,104
if (p2/=10)print*,105
allocate(character(LEN=10)::fun)
fun ="fortran"
end function
end

