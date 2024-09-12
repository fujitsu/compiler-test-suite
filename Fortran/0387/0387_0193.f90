call test01()
print *,'pass'
end

module mod
contains
function ifun()
end function
end

subroutine test01()
use mod
type ty1
 procedure(ifun),nopass,pointer :: ip
 procedure(ifun),nopass,pointer :: ip2
 procedure(ifun),nopass,pointer :: ip3
end type 
type (ty1) :: pp
pp=ty1(ifun,ifun,ifun)
end 
