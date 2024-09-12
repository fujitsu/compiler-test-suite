call test01()
print *,'pass'
end

module mod
contains
function ifun1() result(n)
n=1
end function
function ifun2() result(n)
n=2
end function
function ifun3() result(n)
n=3
end function
end

subroutine test01()
use mod
type ty1
 procedure(ifun1),nopass,pointer :: ip1
 procedure(ifun2),nopass,pointer :: ip2
 procedure(ifun3),nopass,pointer :: ip3
end type 
type (ty1) :: pp
pp=ty1(ifun1,ifun2,ifun3)
if (pp%ip1()/=1)print *,'error-1'
if (pp%ip2()/=2)print *,'error-2'
if (pp%ip3()/=3)print *,'error-3'
pp%ip1=>ifun1
pp%ip2=>ifun2
pp%ip3=>ifun3
if (pp%ip1()/=1)print *,'error-4'
if (pp%ip2()/=2)print *,'error-5'
if (pp%ip3()/=3)print *,'error-6'
end 
