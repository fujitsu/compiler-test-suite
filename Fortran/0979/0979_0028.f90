module mod
real vvvv
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
print *,"pass"
end

module mod1
use ::mod
end

subroutine test03()
use ::mod1 ,only : operator(.kkk.)=>operator(.ccc.)
i= .false..kkk.10
if (i.ne.10) write(6,*) "NG"
end
