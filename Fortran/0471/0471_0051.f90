call sub1()
print *,'pass'
end

module mod
integer :: i
end

subroutine sub1()
use mod
use mod_proc
interface
subroutine jsub()
use mod
endsubroutine
end interface
type ty1
procedure(isub),pointer ,nopass:: icall=>isub
procedure(isub),pointer ,nopass:: icall2=>isub_2
procedure(isub),pointer ,nopass:: icall3=>jsub
end type
type(ty1) :: str
i=1
call str%icall()
if (i.ne.2) print *,'ng'
call str%icall2()
if (i.ne.3) print *,'ng'
call str%icall3()
if (i.ne.4) print *,'ng'
end
module mod_proc
contains
subroutine isub()
use mod
i=2
return
entry isub_2()
i=3
endsubroutine
end

subroutine jsub()
use mod
i=4
endsubroutine
