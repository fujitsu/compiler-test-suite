call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

module mod
integer(kind=4) , parameter :: ip01 = 1
integer(kind=8) , parameter :: ip02 = 2
integer(kind=8) , parameter :: ip03 = 3
integer(kind=8) , parameter :: ip04 = 4
end

subroutine test01()
use mod
call sub()
contains
subroutine sub()
common /com1/ ia(ip04)
if (size(ia) .ne. 4) print *,"err"
end subroutine
end

subroutine test02()
use mod
call sub()
contains
subroutine sub()
common /com1/ ia(ip04+ip01)
if (size(ia) .ne. 5) print *,"err"
end subroutine
end

subroutine test03()
use mod
call sub()
contains
subroutine sub()
common /com1/ ia(int(ip04))
if (size(ia) .ne. 4) print *,"err"
end subroutine
end

subroutine test04()
use mod
call sub()
contains
subroutine sub()
common /com1/ ia(1+ip04)
if (size(ia) .ne. 5) print *,"err"
end subroutine
end