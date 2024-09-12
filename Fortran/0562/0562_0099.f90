subroutine fun
type ty1
character(20)::ch
end type
type,extends(ty1)::ty2
real::rr
end type
type ty3
type(ty2)::obj
end type

class(*),allocatable,target::tar1
class(*),allocatable,target::tar2(:)
type(ty3)::o1(2:4)
o1%obj%rr=0.0
o1%obj%ch="xxxx"
allocate(ty2::tar1)
allocate(tar2,source=o1)
call sub(tar1,tar2)
print*,"Pass"
contains
subroutine sub(ptr1,ptr2)
class(*),pointer,intent(in)::ptr1        
class(*),pointer,intent(in)::ptr2(:)       
if (.NOT.associated(ptr1))print*,101
if (.NOT.associated(ptr2))print*,102
if (size(ptr2) /= 3)print*,103
if (lbound(ptr2,1)/=2 .or. ubound(ptr2,1)/=4)print*,104
select type(ptr2)
        type is(ty1)
        print*,"ty1"
        type is(ty2)
        print*,"ty2"
        class is(ty3)
        type is(ty3)
        print*,"Pass"
        class default
        print*,"error",104
end select
end subroutine
end subroutine

call fun
end
