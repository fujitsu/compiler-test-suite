type ty1
character(20)::ch(2,3)
end type

type,extends(ty1)::ty2
integer::ii(10)
end type

type(ty2),target::tar(5)
integer::ii
tar(3)%ii = 10
tar(4)%ch = "012345"
ii = sub(tar(2:4))
if (ii/=2)print*,104
if(tar(2)%ch(2,3) /= "33333")print*, "106"
print*, "Pass"

contains
integer function sub(ptr)
class(ty1),pointer,intent(in)::ptr(:)
if (.NOT.associated(ptr))print*,"error",101

select type(ptr)
type is (ty1)
        print*,102
type is (ty2)
        if(ptr(2)%ii(1) /= 10)print*,"104"
        if(ptr(3)%ch(1,2) /= "012345")print*, "105"
        if(size(ptr) /= 3)print*,"107"
        if(sizeof(ptr(2)%ch) /= 120)print*,"108"
        ptr(1)%ch(2,3) = "33333"
class default
        print*,"error",103
end select
sub=2
end function
end