module mod
type ty1
sequence
 integer :: ip
end type
type(ty1),pointer :: typ
type(ty1),target  :: tyt
private :: typ
contains
subroutine subbb()
end subroutine
end

call sub()
print *,"pass"
end
subroutine sub()
use mod
type tyyy
type (ty1) :: iooo
end type
type (tyyy) :: sss
call subbb()
end
