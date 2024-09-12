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
procedure(f1) :: d1
integer :: mf1
integer :: res(2)
res = d1()
mf1 = res(2)
end function

function mf2(d1)
use m2
procedure(s1) :: d1
integer :: mf2
call d1()
mf2 = xx
end function
end module

use m1
if(gnr(f1) .ne. 5) print*,"121"
if(gnr(s1) .ne. 4) print*,"122"
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
