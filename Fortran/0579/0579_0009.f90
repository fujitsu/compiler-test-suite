module m1
interface
function f(d)
integer :: f,d
end function
end interface
procedure(f),pointer :: test
procedure(test),pointer:: prc_ptr
contains
function mf(dprc)
procedure(test),pointer,intent(in):: dprc
integer :: mf
mf = dprc(2) + 2
end
end module

use m1
prc_ptr=>f
if(prc_ptr(2) .ne. 3)print*,"101"
if(mf(f) .ne. 5)print*,"102"
print *,'pass'
end

function f(d)
integer :: f,d
f=d+1
end function

