use mod
call sub1()
call sub1_1()
call sub2()
10end 
subroutine sub1()
integer :: i[*]
save i
end subroutine
subroutine sub1_1()
type ty1
integer,ALLOCATABLE :: i[:]
integer,allocatable:: coarray(:) [:,:]
end type
integer,allocatable:: coarray(:) [:,:]
type (ty1) :: i
save i
end subroutine
module mod1
integer :: i[*]
end
module mod
use mod1
private i
contains
subroutine sub2()
end subroutine
end

