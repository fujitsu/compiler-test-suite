Module m
contains
subroutine s()
procedure(s1),pointer :: ptr
ptr=>s1
call sub(ptr)
if(associated(ptr) .eqv. .false.)print*,"101"
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

subroutine sub(proc)
interface
subroutine s1(d)
integer :: d
end subroutine
end interface
procedure(s1) :: proc
integer :: act
act=7
call proc(act)
if(act .ne. 8)print*,"102"
end subroutine
