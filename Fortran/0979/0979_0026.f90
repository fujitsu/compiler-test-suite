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

call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
print *,"pass"
end

subroutine test01()
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.ccc.)
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
end

subroutine test02()
use ::mod ,only : operator(.ccc.)
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
end

subroutine test03()
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
end

subroutine test04()
use ::mod ,only : operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
end

subroutine test05()
use ::mod ,only:operator(.ccc.)
use ::mod ,operator(.aaa.) => operator(.ccc.)
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
end

subroutine test06()
use ::mod ,only: operator(.ccc.)
use ::mod ,operator(.aaa.) => operator(.ccc.)
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
end

subroutine test07()
use ::mod ,only:operator(.ccc.)
use ::mod ,only: operator(.aaa.) => operator(.ccc.)
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
end
