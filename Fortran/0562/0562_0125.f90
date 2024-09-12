type ty
real (kind = 8)::r1(4)
character(len=10)::ch1
character(len=12)::ch2(13)
end type

type,EXTENDS(ty)::tt
integer ::i2
end type

class(tt),allocatable,target::tar(:)

allocate(tt::tar(10))
call pub(tar(2:8))

contains
subroutine pub(obj1)
class(tt), pointer,intent(in)::obj1(:)

if(.NOT.ASSOCIATED(obj1))print*, "101"
if(KIND(obj1(1)%r1(1)) /= 8)print*, "102"
if(size(obj1) /= 7)print*, "103"

select type(obj1)
        class is (tt)
            print*, "Pass"
        class default
            print*, "104"
end select
end subroutine
end
