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
interface operator(.ccc.)
 module procedure ifun
end interface
contains
function ifun(i,j)
logical :: i ,ii
intent(in) :: i,j
ifun = j+100
ii=i
ii=ii
end function
end

subroutine test01()
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.ccc.) => operator(.vvv.)
i= .false..aaa.10
if (i.ne.10+100) write(6,*) "NG"
end
