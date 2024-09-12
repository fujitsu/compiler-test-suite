call sub1()
print *,'pass'
end

module mod
integer :: i
end

subroutine sub1()
use mod
use mod_proc
use mod_proc2
type ty1
procedure(isub),pointer ,nopass:: icall=>isub
procedure(isub),pointer ,nopass:: icall2=>isub_2
procedure(isub),pointer ,nopass:: icall3=>jsub
procedure(isub),pointer ,nopass:: icall4=>jsub_2
end type
type(ty1) :: str
i=1
call str%icall()
if (i.ne.2) print *,'ng'
call str%icall2()
if (i.ne.3) print *,'ng'
call str%icall3()
if (i.ne.4) print *,'ng'
call str%icall4()
if (i.ne.5) print *,'ng'
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

module mod_proc2
contains
subroutine jsub()
use mod
i=4
return
entry jsub_2()
i=5
endsubroutine
end
