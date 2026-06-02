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

subroutine test08()
use mod
integer,pointer,external :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end

subroutine test09()
use mod
integer,external,pointer :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end

subroutine test10()
use mod
pointer :: ip
integer,external :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end

subroutine test11()
use mod
integer,external :: ip
pointer :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end

subroutine test12()
use mod
external :: ip
integer,pointer :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end


subroutine test13()
use mod
integer,pointer :: ip
external :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end




subroutine test01()
use mod
pointer :: ip
external :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end

subroutine test03()
use mod
external :: ip
integer :: ip
pointer :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'
end

subroutine test04()
use mod
external :: ip
integer :: ip
pointer :: ip
integer :: ip2
pointer :: ip2
external :: ip2
ip2=>ifun
ip=>ip2
i=ip()
if (i.ne.1) print *,'fail'
end



subroutine test02()
use mod
pointer :: ip
external :: ip
ip=>sub
call ip(i)
if (i.ne.100) print *,'fail'
end

subroutine test05()
use mod
pointer :: ip,ip2
external :: ip,ip2
ip2=>sub
ip=>ip2
call ip(i)
if (i.ne.100) print *,'fail'
end

subroutine test06()
use mod
pointer :: ip2
external :: ip
pointer :: ip
external :: ip2
ip2=>sub
ip=>ip2
call ip(i)
if (i.ne.100) print *,'fail'
end

subroutine test07()
use mod
external :: ip
external :: ip2
pointer :: ip2
pointer :: ip
external :: ip3
pointer :: ip3
pointer :: ip4
external :: ip4
ip2=>sub
ip3=>ip2
ip4=>ip3
ip=>ip4
call ip(i)
if (i.ne.100) print *,'fail'
end

call test01()
call test03()
call test02()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
call test10()
call test11()
call test12()
print *,"pass"
end
