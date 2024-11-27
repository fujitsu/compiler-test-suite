module m1
type ty
integer::ii
end type
type(ty),protected,target::tar(2:4)
end module

subroutine s1
use m1
call s2(tar)
if(tar(4)%ii==10)print*,"pass"
contains
subroutine s2(dmy)
type(ty),pointer,intent(in)::dmy(:)
if (.not.associated(dmy))print*,101
if (size(dmy)/=3)print*,102
if (ubound(dmy,1)/=4)print*,103
dmy%ii=10
end subroutine
end subroutine

program main
call s1
end
