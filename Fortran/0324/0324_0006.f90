call test01()
call test02()
call test03()
call test04()
print *,'pass'
end


module mod01
external :: suba
contains
subroutine sub1()
end subroutine
end module
subroutine suba()
end subroutine

module mod01a
use mod01,sub1a=>sub1,subaa=>suba
end module

subroutine test01() 
use mod01
use mod01a
call sub1()
call sub1a()
call suba()
call subaa()
end subroutine

module mod02
contains
subroutine sub1()
end subroutine
end module

subroutine test02() 
use mod02
call sub1()
end subroutine

module mod03
contains
subroutine sub1()
end subroutine
end module

subroutine test03()
use mod03
call sub1()
end subroutine

module mod04
contains
subroutine sub1()
end subroutine
end module

subroutine test04()
use mod04
call sub1()
end subroutine
