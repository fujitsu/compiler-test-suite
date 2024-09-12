character(len=10)::act_1(10),act_2(20)

call s(act_1,act_2)
contains
subroutine s(dummy_1,dum)
character(len=*):: dummy_1(:)
class(*) :: dum(:)
print*,shape(dum)
print*,shape(dummy_1)
end subroutine
end
