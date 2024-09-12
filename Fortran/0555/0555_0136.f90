character(len=10):: act_1
integer :: act_2
call s(act_1,act_2)
contains
subroutine s(dummy_1,dummy_2)
class(*):: dummy_1
class(*):: dummy_2
print*,sizeof(dummy_1)
print*,sizeof(dummy_2)
end subroutine
end
