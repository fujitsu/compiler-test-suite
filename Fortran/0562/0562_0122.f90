type ty
real (kind = 8)::r1(4)
character(len=10)::ch1
character(len=12)::ch2(13)
integer ::i2
end type

type::tt
class(ty),allocatable::tar(:)
end type

type(tt),target::objTT

allocate(ty::objTT%tar(10))
call pub(objTT%tar)

contains
subroutine pub(obj1)
class(ty), pointer,intent(in)::obj1(:)

if(.NOT.ASSOCIATED(obj1))print*, "101"
if(KIND(obj1(1)%r1(1)) /= 8)print*, "102"
if(sizeof(obj1(2)%ch2) /= 156)print*, "103"
select type(obj1)
        class is (ty)
            print*, "Pass"
        class default
            print*, "104"
end select
end subroutine
end
