use mod
call sub()
print *,'pass'
end 
module mod
integer :: i
namelist /na/i
contains
subroutine sub()
end subroutine
end
