integer,target :: t=1
integer,pointer :: p=>t
if (p.ne.t) print *,'err'
print *,'pass'
end
module mod
contains
recursive subroutine subaa()
end subroutine
end
recursive subroutine sub()
use mod
procedure(),pointer :: p=>subaa
call sub()
call p()
end
