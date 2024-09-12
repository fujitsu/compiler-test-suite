character(len=10):: act_2(10)
character(len=10):: act_3(20)
integer :: act_int(5)=18
call s(act_int,act_2,act_3)
contains
subroutine s(dummy_1,dummy_2,dummy_3)
class(*):: dummy_1(:)
class(*) :: dummy_2(:)
class(*) :: dummy_3(:)
print*,shape(dummy_1)
print*,shape(dummy_2)
print*,lbound(dummy_3)
end subroutine
end
