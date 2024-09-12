call sub1()
print *,'pass'
end

module mod
integer :: i
end

subroutine sub1()
use mod
use mod_proc
type ty1
procedure(isub),pointer ,nopass:: icall=>isub
end type
type(ty1) :: str
i=1
ii = str%icall();ii=ii
if (i.ne.2) print *,'ng'
end

module mod_proc
contains
function   isub()
use mod
i=2
isub=1
endfunction   
end
