type ty
real (kind = 8)::r1(4)
character(len=10)::ch1
character(len=12)::ch2(13)
integer ::i2
end type

type::tt
class(*),allocatable::tar(:)
class(*),pointer::ptr(:)
end type

type(tt),target::objTT

allocate(ty::objTT%tar(10))
allocate(ty::objTT%ptr(6))
call pub(objTT%tar(2:8:2), objTT%ptr)

contains
subroutine pub(obj1, obj2)
class(*), pointer,intent(in)::obj1(:)
class(*), pointer,intent(in)::obj2(:)

if(.NOT.ASSOCIATED(obj1))print*, "101"
if(size(obj1) /= 4)print*, "103"

if(.NOT.ASSOCIATED(obj2))print*, "101"
if(size(obj2) /= 6)print*, "103"

select type(obj1)
        class is (ty)
            print*, "Pass"
        class default
            print*, "104"
end select
end subroutine
end
