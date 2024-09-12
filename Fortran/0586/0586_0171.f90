Module m
procedure(f),pointer :: ptr1=>f, ptr2=>f1
contains
function f(d)
integer :: f
integer :: d
f=d
end function
function f1(d2)
integer :: f1
integer :: d2
d2=d2+1
f1 =9
end function
end module

use m
integer::x =20
if(associated(ptr1) .eqv. .false.)print*,"101"
if(associated(ptr2) .eqv. .false.)print*,"102"
if (ptr1(x) .ne. 20)print*,"121"
if (ptr2(x) .ne. 9)print*,"122"
print*,"pass"
end 
