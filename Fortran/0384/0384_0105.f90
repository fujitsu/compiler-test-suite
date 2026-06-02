call test01()
print *,"pass"
end

module mod
contains
subroutine test02()
end subroutine
subroutine test03()
end subroutine
function ifun()
ifun=1
end function
end

subroutine test01()
use mod
procedure(test02),pointer :: ip
type ty1
 procedure(test02),pointer ,nopass :: ip
 procedure(integer),pointer ,nopass :: ipfun
end type
type(ty1) :: sss
sss%ip=>test03
sss%ipfun=>ifun
ip=>test03
call ip()
call sss%ip()
i=sss%ipfun()
if (i.ne.1) print *,'fail'
end
