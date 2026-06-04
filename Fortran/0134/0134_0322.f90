call test01()
print *,'pass'
end

module mod
interface 
function ifun(i) result(cha)
character(len=i+10) :: cha
end function   
end interface
end

subroutine test01()
use mod
type ty1 
 procedure(ifun),nopass,pointer :: ip
end type
type (ty1) :: str
str%ip=>ifun
if (str%ip(i=1).ne."a")print *,'fail'
end 
function ifun(i) result(cha)
character(len=i+10) :: cha
cha = "a"
end function   
