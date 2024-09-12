type ty1
integer,pointer::ii
end type
type,extends(ty1)::ty2
character(20)::ch
end type
type ty3
type(ty1),pointer::obj1
end type

class(ty3),allocatable,target::tar1
type(ty3)::o1
type(ty1),target::o2
real::r1
o1%obj1=>NULL()
o2%ii=>NULL()
allocate(tar1,source=o1)
allocate(tar1%obj1,source=o2)
r1 = fun(tar1,tar1%obj1)
if (.NOT.associated(tar1%obj1%ii))print*,103
if (r1==2.50)print*,"Pass"
contains
real function fun(p1,p2)
class(ty3),pointer,intent(in)::p1
type(ty1),pointer,intent(in)::p2
integer,target::c1=12
if (.NOT.associated(p1))print*,101
if (.NOT.associated(p2))print*,102
p2%ii => c1
fun = 2.50
end function
end

