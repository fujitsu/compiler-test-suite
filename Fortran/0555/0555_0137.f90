character(len=10):: act_1
integer :: act_2
character(len=20):: act_3
call s(act_1,act_2,act_3)
contains
subroutine s(dummy_1,dummy_2,dummy_3)
class(*):: dummy_1
class(*):: dummy_2
character(len=*):: dummy_3
print*,sizeof(dummy_1)
print*,sizeof(dummy_2)
print*,sizeof(dummy_3)
end subroutine
end
