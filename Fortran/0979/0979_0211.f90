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

module mod2
use ::mod0 ,only : operator(.vvv.) => operator(.ccc.)
interface operator(.ccc.)
 module procedure ifun
end interface
interface operator(//)
 module procedure jfun
end interface
contains
function ifun(i,j)
logical :: i ,ii
intent(in) :: i,j
ifun = j+100
ii=i
ii=ii
end function
function jfun(i,j)
logical :: i ,ii
intent(in) :: i,j
jfun = j+100+111111111
ii=i
ii=ii
end function
end

module mod
use ::mod2 ,only : operator(.kkk.) => operator(.ccc.)
use ::mod2 ,only : operator(.vvv.)
interface operator(.ccc.)
 module procedure ifun
end interface
interface operator(//)
 module procedure ifun
end interface
contains
function ifun(i,j)
logical :: i ,ii
intent(in) :: i,j
ifun = j+100+100
ii=i
ii=ii
end function
end

subroutine test01()
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.ccc.) => operator(.vvv.)
use ::mod ,only : operator(.kkk.) 
i= .false..ccc.10
if (i.ne.10) write(6,*) "NG"
i= .false..kkk.10
if (i.ne.10+100) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10+200) write(6,*) "NG"
end

subroutine test02()
use ::mod ,only : operator(//)
i= .false.//10
if (i.ne.10+200) write(6,*) "NG"
end

subroutine test03()
use ::mod ,only : operator(//)
use ::mod ,only : operator(.vvv.)
i= .false..vvv.10
if (i.ne.10) write(6,*) "NG"
i= .false.//10
if (i.ne.10+200) write(6,*) "NG"
end

subroutine test04()
use ::mod ,only : operator(//)
use ::mod ,only : operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
use ::mod ,only : operator(.aaa.) => operator(.ccc.)
i= .false.//10
if (i.ne.10+200) write(6,*) "NG"
i= .false..aaa.10
if (i.ne.10+200) write(6,*) "NG"
i= .false..ccc.10
if (i.ne.10+200) write(6,*) "NG"
end

