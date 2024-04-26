print *,'snfmm519 pass'
end

module mod01
 integer,pointer :: m
end module 

subroutine test01()
 use mod01
 implicit none
 integer :: k(m)
 if (size(k).ne.10) print *,'err'
end

subroutine test02()
 call sub()
 contains
 subroutine sub()
 use mod01
 implicit none
 integer :: k(m)
 if (size(k).ne.10) print *,'err'
 end subroutine
end

subroutine test03()
 use mod01
 call sub()
 contains
 subroutine sub()
 implicit none
 integer :: k(m)
 if (size(k).ne.10) print *,'err'
 end subroutine
end

subroutine test04()
common /com02/ m
integer,pointer :: m
integer :: k(m)
if (1.eq.2) then
if (size(k).ne.10) print *,'err'
end if
end subroutine

subroutine test05()
contains
subroutine sub()
common /com02/ m
integer,pointer :: m
integer :: k(m)
if (1.eq.2) then
if (size(k).ne.10) print *,'err'
end if
end subroutine
end subroutine

subroutine test06()
common /com02/ m
integer,pointer :: m
contains
subroutine sub()
integer :: k(m)
if (1.eq.2) then
if (size(k).ne.10) print *,'err'
end if
end subroutine
end subroutine

subroutine test07()
interface   
subroutine sub1()
common /com02/ m
integer,pointer :: m
integer :: k(m)
end subroutine
end interface
end subroutine

subroutine test08()
contains
subroutine subbb()
interface   
subroutine sub1()
common /com02/ m
integer,pointer :: m
integer :: k(m)
end subroutine
end interface
end subroutine
end subroutine

subroutine test09()
interface   
subroutine sub1()
use mod01
integer :: k(m)
end subroutine
end interface
end subroutine

subroutine test10()
contains
subroutine subbb()
interface   
subroutine sub1()
use mod01
integer :: k(m)
end subroutine
end interface
end subroutine
end subroutine
