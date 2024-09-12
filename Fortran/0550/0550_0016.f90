program main
implicit none 
integer :: int1
int1=10
call sub(int1)
print*, int1
contains

subroutine sub(dum) 
class(*):: dum
print*, "In Subroutine"
end subroutine
end
