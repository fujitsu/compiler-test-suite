call test01()
call test02()
print *,"pass"
end
module mod
contains
integer function ifun()
ifun=1
end function
subroutine sub(i)
integer :: i
i=100
end subroutine
end

subroutine test01()
use mod
external :: ip
pointer :: ip
integer :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end

subroutine test02()
use mod
pointer :: ip
procedure() :: ip
ip=>sub
call ip(i)
if (i.ne.100) print *,'fail'
end

