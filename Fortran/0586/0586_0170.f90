Module m1
procedure(f),pointer :: ptr2=>f
procedure(s),pointer :: ptr3=>s
contains
function f(d)
integer :: f
integer :: d
f=d
end function
subroutine s(d2)
integer :: d2
d2=d2+1
if (d2 .ne. 6)print*,"123"
end subroutine
end module

use m1
integer::x=5
if(associated(ptr2) .eqv. .false.)print*,"101"
if(associated(ptr3) .eqv. .false.)print*,"102"
if (ptr2(8) .ne. 8)print*,"122"
call ptr3(x)
print*,"pass"
end 
