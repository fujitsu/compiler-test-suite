module mod01
integer(kind=4) , parameter :: ip01 = 1
integer(kind=8) , parameter :: ip02 = 2
integer(kind=8) , parameter :: ip03 = 3
integer(kind=8) , parameter :: ip04 = 4
contains
subroutine test01()
integer(kind=8) , parameter :: ip04 = 4
common /com1/ ia(ip04)
if (size(ia) .ne. 4) print *,"err"
call sub()
contains
subroutine sub()
common /com1/ ia(ip04)
if (size(ia) .ne. 4) print *,"err"
end subroutine
end subroutine
end

module mod02
integer(kind=4) , parameter :: ip01 = 1
integer(kind=8) , parameter :: ip02 = 2
integer(kind=8) , parameter :: ip03 = 3
integer(kind=8) , parameter :: ip04 = 4
contains
subroutine test02()
common /com1/ ia(ip04+ip01)
if (size(ia) .ne. 5) print *,"err"
call sub()
contains
subroutine sub()
integer(kind=8) , parameter :: ip04 = 4
common /com1/ ia(ip04+ip01)
if (size(ia) .ne. 5) print *,"err"
end subroutine
end subroutine
end

module mod03
integer(kind=4) , parameter :: ip01 = 1
integer(kind=8) , parameter :: ip02 = 2
integer(kind=8) , parameter :: ip03 = 3
integer(kind=8) , parameter :: ip04 = 4
contains
subroutine test03()
integer(kind=8) , parameter :: ip04 = 4
common /com1/ ia(int(ip04))
if (size(ia) .ne. 4) print *,"err"
call sub()
contains
subroutine sub()
integer(kind=8) , parameter :: ip04 = 4
common /com1/ ia(int(ip04))
if (size(ia) .ne. 4) print *,"err"
end subroutine
end subroutine
end

module mod04
integer(kind=4) , parameter :: ip01 = 1
integer(kind=8) , parameter :: ip02 = 2
integer(kind=8) , parameter :: ip03 = 3
integer(kind=8) , parameter :: ip04 = 4
contains
subroutine test04()
common /com1/ ia(1+ip04)
if (size(ia) .ne. 5) print *,"err"
call sub()
contains
subroutine sub()
common /com1/ ia(1+ip04)
if (size(ia) .ne. 5) print *,"err"
end subroutine
end subroutine
end

use mod01
use mod02
use mod03
use mod04
call test01()
call test02()
call test03()
call test04()
print *,'pass'
end
