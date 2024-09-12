procedure(f1),pointer :: ptr
ptr=>f1
if(associated(ptr) .eqv. .false.)print*,"101"
if (ptr(7) .ne. 8)print*,"122"
print*,"pass"
contains
function f1(d)
integer :: d
f1=d+1
end function
end
