call test01()
print *,'pass'
end

module mod
interface 
function ifun(i) result(cha)
character(len=i+1) :: cha
end function   
end interface
end

subroutine test01()
use mod
type ty1 
 procedure(ifun),nopass,pointer :: ip
end type
character(2) c
type (ty1) :: str
str%ip=>ifun
c=str%ip(i=1)
if (c/='12')print *,'error'
end subroutine
function ifun(i) result(cha)
character(len=i+1) :: cha
cha='12'
end function   
