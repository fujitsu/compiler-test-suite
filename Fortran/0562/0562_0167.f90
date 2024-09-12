subroutine sub
character(LEN=20),allocatable,target::tar(:)
character(LEN=20),pointer::ptr(:)
allocate(tar(2:4))
tar="xxxx"
call s1(tar)
if (.NOT.associated(ptr))print*,"error",103
if (size(ptr)/=3)print*,105
if (ubound(ptr,1)/=4)print*,106
if (ptr(3)/="abc")print*,107
print*,"Pass"
contains
subroutine s1(p2)
character(LEN=*),pointer,intent(in)::p2(:)
if (.NOT.associated(p2))print*,"error",101
if (size(p2)/=3)print*,102
if (lbound(p2,1)/=2 .or. ubound(p2,1)/=4)print*,103
if (p2(3)/="xxxx")print*,104
p2(3)="abc"
ptr => p2
end subroutine
end subroutine

call sub
end
