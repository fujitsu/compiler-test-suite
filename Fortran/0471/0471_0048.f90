call sub1()
print *,'pass'
end

module mod
integer :: i
end

subroutine sub1()
use mod
interface
function   isub()
use mod
endfunction   
end interface
type ty1
procedure(isub),pointer ,nopass:: icall=>isub
end type
type(ty1) :: str
i=1
ii = str%icall();ii=ii
if (i.ne.2) print *,'ng'
end
function   isub()
use mod
i=2
isub=1
endfunction   
