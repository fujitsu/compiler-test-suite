call sub1()
print *,'pass'
end

module mod
integer :: i
end

subroutine sub1()
use mod
interface
subroutine isub()
use mod
endsubroutine
end interface
type ty1
procedure(isub),pointer ,nopass:: icall=>isub
end type
type(ty1) :: str
i=1
call str%icall()
if (i.ne.2) print *,'ng'
end
subroutine isub()
use mod
i=2
endsubroutine
