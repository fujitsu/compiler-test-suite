type ty1
character(20)::ch
end type
type,extends(ty1)::ty2
integer::ii
end type
class(*),allocatable,target::tar
integer::ii 
allocate(real::tar)
ii = sub(tar)
if (ii/=2)print*,104
contains
integer function sub(ptr)
class(*),pointer,intent(in)::ptr
if (.NOT.associated(ptr))print*,"error",101
select type(ptr)
type is (ty2)
        print*,102
type is (real)
        print*,"Pass"
class default
        print*,"error",103
end select
sub=2
end function
end
