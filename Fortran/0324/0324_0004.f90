call test01()
call test02()
call test03()
call test04()
print *,'pass'
end


module mod01
private i
contains
subroutine sub1()
i=1
end subroutine
end module

subroutine test01() 
use mod01
call sub1()
end subroutine

module mod02
allocatable i
integer i(:)
contains
subroutine sub2()
allocate(i(10))
i=1
end subroutine
end module

subroutine test02() 
use mod02
call sub2()
end subroutine

module mod03
private :: i
allocatable i
integer i(:)
contains
subroutine sub3()
allocate(i(10))
i=1
end subroutine
end module

subroutine test03() 
use mod03
call sub3()
end subroutine

module mod04
contains
subroutine sub4()
integer,allocatable ::i(:)
allocate(i(10))
i=1
end subroutine
end module

subroutine test04() 
use mod04
call sub4()
end subroutine

