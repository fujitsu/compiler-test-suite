module mod
interface operator(.ccc.)
 module procedure ifun
end interface
contains
function ifun(i,j)
logical :: i ,ii
intent(in) :: i,j
ifun = j
ii=i
ii=ii
end function
end

call test03()
call test04()
print *,"pass"
end

module mod1
use mod
end

subroutine test03()
use mod1, only:operator(.ccc.)
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
end
subroutine test04()
use mod1
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
end
