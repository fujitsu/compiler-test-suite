module mod1
type base
integer :: ii
contains
procedure , NOPASS :: prc=>fun1 
end type

type,extends(base) :: deriv1
contains
procedure , NOPASS:: prc=>fun2
end type

contains
subroutine fun1(bb , ii)  
CHARACTER(LEN=:), pointer :: bb 
integer :: ii
if (ii .NE. 10) print*, "Error"
print*, bb
end subroutine

subroutine fun2(bb, ii)
CHARACTER(LEN=:), pointer ::bb
integer :: ii
if (ii .NE. 10) print*, "Error"
print*, bb
end subroutine
end module


use mod1
class(base), pointer :: ptr
type(deriv1), target :: obj
CHARACTER(LEN=:), pointer ::aa
allocate( CHARACTER(len=10):: aa)
obj%ii=10
ptr=>obj
aa="Pass"
call ptr%prc(aa, 10)
end

