call test01()
call test02()
call test03()
print *,'pass'
end

module mod01
type ty1
integer :: a(10)=(/(i,i=1,10)/)
integer :: b=100
end type
type (ty1) :: str
private :: str
save :: str
contains
recursive subroutine sub1()
call sub5()
call sub2(1)
str%b=1+1
end subroutine
recursive subroutine sub2(ia)
if (str%b.ne.ia) print *,'err'
end subroutine
recursive subroutine sub3()
str%b=12
end subroutine
recursive subroutine sub4()
if (str%b.ne.12) print *,'err'
end subroutine
recursive subroutine sub5()
str%b=1
end subroutine
end module

subroutine test01() 
use mod01
call sub1()
call sub2(2)
call sub3()
call sub4()
call sub5()
end subroutine

module mod02
type ty1
integer :: a(10)=(/(i,i=1,10)/)
integer :: b=100
end type
type (ty1) :: str
save :: str
contains
recursive subroutine sub1()
call sub5()
call sub2(1)
str%b=1+1
end subroutine
recursive subroutine sub2(ia)
if (str%b.ne.ia) print *,'err'
end subroutine
recursive subroutine sub3()
str%b=12
end subroutine
recursive subroutine sub4()
if (str%b.ne.12) print *,'err'
end subroutine
recursive subroutine sub5()
str%b=1
end subroutine
end module

subroutine test02() 
use mod02
call sub1()
call sub2(2)
call sub3()
call sub4()
call sub5()
end subroutine

module mod03
type ty1
integer :: a(10)
integer :: b
end type
type (ty1) :: str
save :: str
contains
recursive subroutine sub1()
call sub5()
call sub2(1)
str%b=1+1
end subroutine
recursive subroutine sub2(ia)
if (str%b.ne.ia) print *,'err'
end subroutine
recursive subroutine sub3()
str%b=12
end subroutine
recursive subroutine sub4()
if (str%b.ne.12) print *,'err'
end subroutine
recursive subroutine sub5()
str%b=1
end subroutine
end module

subroutine test03() 
use mod03
call sub1()
call sub2(2)
call sub3()
call sub4()
call sub5()
end subroutine

