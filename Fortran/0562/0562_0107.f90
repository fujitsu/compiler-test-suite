type ty1
character(20)::ch
end type

type,extends(ty1)::ty2
integer::ii
end type

type(ty2),target::tar
integer::ii 
tar%ii = 10
tar%ch = "012345"
ii = sub(tar)
if (ii/=2)print*,104
if(tar%ch /= "33333")print*, "106"
print*, "Pass"

contains
integer function sub(ptr)
class(ty1),pointer,intent(in)::ptr
if (.NOT.associated(ptr))print*,"error",101

select type(ptr)
type is (ty1)
        print*,102
type is (ty2)
        if(ptr%ii /= 10)print*,"104"
        if(ptr%ch /= "012345")print*, "105"
        ptr%ch = "33333"
class default
        print*,"error",103
end select
sub=2
end function
end
