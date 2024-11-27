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
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10+100) write(6,*) "NG"
end

subroutine test02()
use ::mod ,only : operator(.ccc.)
i= .false..ccc.10
if (i.ne.10+100) write(6,*) "NG"
end

subroutine test03()
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.vvv.)
i= .false..vvv.10
if (i.ne.10) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10+100) write(6,*) "NG"
end

subroutine test04()
use ::mod ,only : operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
i= .false..ccc.10
if (i.ne.10+100) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10+100) write(6,*) "NG"
end

subroutine test05()
use ::mod ,only : operator(.ccc.)
use ::mod ,only : operator(.vvv.)
i= .false..vvv.10
if (i.ne.10) write(6,*) "NG"
i= .false..ccc.10
if (i.ne.10+100) write(6,*) "NG"
end

subroutine test06()
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.vvv.)
use ::mod ,only : operator(.ccc.)
i= .false..vvv.10
if (i.ne.10) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10+100) write(6,*) "NG"
i= .false..ccc.10
if (i.ne.10+100) write(6,*) "NG"
end

subroutine test07()
use ::mod 
use ::mod ,only : operator(.vvv.)
i= .false..vvv.10
if (i.ne.10) write(6,*) "NG"
i= .false..ccc.10
if (i.ne.10+100) write(6,*) "NG"
end
