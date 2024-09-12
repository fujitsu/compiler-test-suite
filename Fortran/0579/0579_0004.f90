module m1
interface
function f(d)
integer :: f,d
end function
end interface
procedure(f),pointer :: test
procedure(test) :: prc
procedure(test),pointer:: prc_ptr
contains
function mf(dprc1,dprc2)
procedure(test):: dprc1
procedure(test),pointer,intent(in):: dprc2
integer :: mf
mf = dprc2(2) + dprc1(3)
end
end module

use m1
prc_ptr=>f
if(prc(3) .ne. 5)print*,"100"
if(prc_ptr(2) .ne. 3)print*,"101"
if(mf(prc,f) .ne. 8)print*,"102"
print *,'pass'
end

function f(d)
integer :: f,d
f=d+1
end function

function prc(d)
integer :: prc,d
prc=d+2
end function
