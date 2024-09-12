type ty1
integer :: ii
end type

type,extends(ty1):: ty2
integer :: aa
end type ty2

type,extends(ty2):: ty3
character(len=8):: ch_1
end type ty3

character(len=10):: act_1
type(ty3) :: act_2
type(ty2):: act_3

call s(act_1,act_2,act_3)
contains
subroutine s(dummy_1,dummy_2,dummy_3)
class(*):: dummy_1
class(ty1):: dummy_2
class(*):: dummy_3
print*,sizeof(dummy_1)
print*,sizeof(dummy_2)
print*,sizeof(dummy_3)
end subroutine
end
