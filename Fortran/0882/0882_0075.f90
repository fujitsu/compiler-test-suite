program test
implicit none 
integer :: int1
int1=10
call sub(int1)
print*, int1
contains

subroutine sub(dum) 
class(*):: dum
select type(dum)
class default
print*, "In Subroutine"
endselect
end subroutine
end
