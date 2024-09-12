type ty1
integer :: ii
end type ty1

character(len=10)::act_2(10)
integer :: act_int(5)
type(ty1):: obj(10)
obj%ii =50
call s(act_int,act_2,obj)
contains
subroutine s(dummy_1,dummy_2,dummy_3)
class(*):: dummy_1(:)
class(*) :: dummy_2(:)
class(ty1) :: dummy_3(:)
print*,shape(dummy_1)
print*,shape(dummy_2)
print*,dummy_3(1)%ii
end subroutine
end
