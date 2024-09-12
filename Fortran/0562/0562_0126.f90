module mod1
type ty
real (kind = 8)::r1(4)
character(len=10)::ch1
character(len=12)::ch2(13)
end type

type,EXTENDS(ty)::tt
integer ::i2
end type
end module

USE mod1
class(tt),allocatable,target::tar(:)

allocate(tt::tar(10))
call pub(tar(2:8:2))
if(tar(4)%ch2(6) /= "012345")print*, "110"

contains
subroutine pub(obj1)
class(tt), pointer,intent(in)::obj1(:)

if(.NOT.ASSOCIATED(obj1))print*, "101"
if(KIND(obj1(1)%r1(1)) /= 8)print*, "102"
if(size(obj1) /= 4)print*, "103"
if(sizeof(obj1(2)%ch2) /= 156)print*, "104"
obj1(2)%ch2(6) = "012345"

select type(obj1)
        class is (tt)
            print*, "Pass"
        class default
            print*, "105"
end select
end subroutine
end
