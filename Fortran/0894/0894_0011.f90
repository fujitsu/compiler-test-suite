module m1
integer,protected,target::tar(2:7)=0
end module

subroutine s1
use m1
call s2(tar(3:5))
if (tar(2)/=0)print*,104
if (tar(3)/=1)print*,105
if (tar(5)/=3)print*,106
print*,"pass"
contains
subroutine s2(ptr)
integer,pointer,intent(in)::ptr(:)
if (.not.associated(ptr))print*,"error",101
if (size(ptr)/=3)print*,"error",102
if (lbound(ptr,1)/=1 .or.ubound(ptr,1)/=3)print*,"error",103
ptr(1)=1
ptr(2)=2
ptr(3)=3
end subroutine
end subroutine

program main
call s1
end
