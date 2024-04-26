call test01()
call test01a()
call test01b()
call test02()
call test02a()
call test02b()
print *,'pass'
end

module mod01
integer ,allocatable :: a(:)
integer :: pp
parameter (pp=10)
integer,dimension(pp,pp,pp,pp,pp,pp) :: ar1
end 
module mod01a
use mod01,aa=>a,aar1=>ar1
contains
subroutine sub()
use mod01
if (.not.allocated(a)) allocate(a(10)) 
end subroutine
end 
subroutine test01()
use mod01a
call sub()
end
subroutine test01a()
use mod01a
use mod01
call sub()
end
subroutine test01b()
use mod01
use mod01a
call sub()
end

module mod02
integer ,allocatable :: a(:)
integer :: pp
parameter (pp=10)
integer,dimension(pp,pp,pp,pp,pp,pp) :: ar1
end
module mod02a
use mod02,aa=>a,aar1=>ar1
contains
subroutine sub()
use mod02
if (.not.allocated(a)) allocate(a(10)) 
end subroutine
end 
subroutine test02()
use mod02a,aaa=>aa,aaar1=>aar1
call sub()
end
subroutine test02a()
use mod02a,aaa=>aa,aaar1=>aar1
use mod02,wa=>a,war1=>ar1
call sub()
end
subroutine test02b()
use mod02,wa=>a,war1=>ar1
use mod02a,aaa=>aa,aaar1=>aar1
call sub()
end

