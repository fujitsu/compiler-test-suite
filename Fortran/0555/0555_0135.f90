character(len=10):: act_1(10,10)
character(len=5):: act_2
integer:: act_3(10)
character(len=20):: act_4(5)

call s(act_1,act_2,act_3,act_4)
contains
subroutine s(dummy_1,dummy_2,dummy_3,dummy_4)
class(*):: dummy_1(10,10)
character(lEN=*):: dummy_2
class(*) :: dummy_3(:)
character(lEN=*):: dummy_4(:)

print*,size(dummy_1)
print*,lbound(dummy_3)
print*,sizeof(dummy_2)
print*,len(dummy_4)
end subroutine
end
