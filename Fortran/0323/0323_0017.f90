module mod
 integer,pointer :: m
end

interface 
subroutine test01()
use mod
implicit none
integer :: k(m)
end subroutine
end interface
print *,'snfmm520 pass'
end

subroutine subbb()
interface test01
subroutine test01()
use mod
implicit none
integer :: k(m)
end subroutine
end interface
end

subroutine subb2()
interface assignment(=)
subroutine test01(i,j)
use mod
implicit none
intent(inout) :: i
intent(in) :: j
logical j    
integer i
integer :: k(m)
end subroutine
end interface
end
