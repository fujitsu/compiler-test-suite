Module m
interface gnr
module procedure sub1
module procedure sub2
end interface
contains
subroutine sub1(dmy1)
integer :: dmy1
dmy1=dmy1-1
if(dmy1 .ne. 3)print*,"101"
end subroutine
subroutine sub2(dmy2)
interface
function fun(d)
integer :: d
integer :: fun
end function
end interface
procedure(fun) :: dmy2
if( dmy2(5) .ne. 5)print*,"102"
end subroutine
end module

use m
external :: fun
integer :: a
a=4
call gnr(a)
call gnr(fun)
print*,"pass"
end

function fun(d)
integer :: d
integer :: fun
fun=d
end function
