use mod
call sub()
print *,'pass'
end 
module mod2
integer :: i
namelist /na/i
end
module mod
use mod2
contains
subroutine sub()
end subroutine
end
