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

module mod
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

call test01()
print *,"pass"
end

module mod1
use ::mod0 ,only : operator(.vvv.) => operator(.ccc.)
use ::mod ,only  : operator(.vva.) => operator(.ccc.)
end

subroutine test01()
use mod1,only : operator(.aaa.) => operator(.vvv.)
use mod1,only : operator(.bbb.) => operator(.vva.)
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
i= .false..bbb.10
if (i.ne.10+100) write(6,*) "NG"
end
