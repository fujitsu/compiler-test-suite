Module m
contains
subroutine s()
procedure(s1),pointer :: ptr
integer :: act
act=7
ptr=>s1
call ptr(act)
if(associated(ptr) .eqv. .false.)print*,"101"
if (act .ne. 8)print*,"121"
print*,"pass"
contains
subroutine s1(d)
integer :: d
d=d+1
end subroutine
end subroutine
end

use m
call s()
end
