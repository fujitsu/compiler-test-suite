call test01()
call test03()
call test02()
call test04()
call test05()
call test06()
call test07()
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
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end

subroutine test03()
use mod
external :: ip
pointer :: ip
integer :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end

subroutine test04()
use mod
external :: ip
pointer :: ip
integer :: ip
integer ,external :: ip2
pointer :: ip2
ip2=>ifun
ip=>ip2
i=ip()
if (i.ne.1) print *,'fail'
end



subroutine test02()
use mod
external :: ip
pointer :: ip
ip=>sub
call ip(i)
if (i.ne.100) print *,'fail'
end

subroutine test05()
use mod
external :: ip,ip2
pointer :: ip,ip2
ip2=>sub
ip=>ip2
call ip(i)
if (i.ne.100) print *,'fail'
end

subroutine test06()
use mod
external :: ip
pointer :: ip
external :: ip2
pointer :: ip2
ip2=>sub
ip=>ip2
call ip(i)
if (i.ne.100) print *,'fail'
end

subroutine test07()
use mod
external :: ip
pointer :: ip
external :: ip2
pointer :: ip2
external :: ip3
pointer :: ip3
external :: ip4
pointer :: ip4
ip2=>sub
ip3=>ip2
ip4=>ip3
ip=>ip4
call ip(i)
if (i.ne.100) print *,'fail'
end
