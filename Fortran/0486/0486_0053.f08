module m2
integer :: xx
end module

module m1

interface
function f1()
integer :: f1
end function

subroutine s1()
end subroutine
end interface

interface gnr
module procedure :: mf1,mf2
end interface

contains
function mf1(d1)
procedure(f1),intent(in),pointer :: d1
integer :: mf1
integer :: res(2)
res = d1()
mf1 = res(2)
end function

function mf2(d1)
use m2
procedure(s1),intent(in),pointer :: d1
integer :: mf2
call d1()
mf2 = xx
end function
end module

use m1
if(mf2(s1) .ne. 4) print*,"1122"
if(mf1(f1) .ne. 5) print*,"1121"
print*,"pass"
end

function f1()
integer :: f1
f1 = 5
end function

subroutine s1()
use m2
xx = 4
end
