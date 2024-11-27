module mod
integer vvv
interface operator(.ccc.)
 module procedure ifun
end interface
interface operator(.ddd.)
 module procedure ifun1
end interface
contains
function ifun(i,j)
logical :: i ,ii
intent(in) :: i,j
ifun = j
ii=i
ii=ii
end function
function ifun1(i,j)
logical :: i ,ii
intent(in) :: i,j
ifun1 = j
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
use ::mod ,only : operator(.ccc.),operator(.ddd.)
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
i= .false..ddd.10
if (i.ne.10) write(6,*) "NG"
end

subroutine test03()
use ::mod ,only : operator(.aaa.) => operator(.ccc.),operator(.ddd.)
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
i= .false..ddd.10
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
use ::mod ,only : vx=>vvv, operator(.aaa.) => operator(.ccc.),operator(.ddd.)
vx=2
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
i= .false..ddd.10
if (i.ne.10) write(6,*) "NG"
if (vx.ne.2) write(6,*) "NG"
end

subroutine test06()
use ::mod ,only : operator(.aaa.) => operator(.ccc.),vx=>vvv, operator(.ddd.)
vx=2
i= .false..aaa.10
if (i.ne.10) write(6,*) "NG"
i= .false..ddd.10
if (i.ne.10) write(6,*) "NG"
if (vx.ne.2) write(6,*) "NG"
end
