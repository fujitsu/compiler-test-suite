module mod0
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

call test01()
print *,"pass"
end

module mod
use ::mod0 ,only : operator(.vvv.) => operator(.ccc.)
end

subroutine test01()
use mod,only : operator(.aaa.) => operator(.vvv.)
use mod,only : operator(.bbb.) => operator(.vvv.)
i= .false..bbb.10
if (i.ne.10) write(6,*) "NG"
end
